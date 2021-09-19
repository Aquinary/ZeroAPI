function Z:Storage(mod_name)
    local obj = {}
    --[[
        Постоянное хранилище, которое работает до тех пор, пока не будет выключен мод.

        Новый забег: данные сохраняются
        Перезапуск игры (продолжение забега): данные сохраняются
    --]]

    -- Если хотим получить доступ к данным из других модов
    local mod_name_old = Z.MOD_NAME
    Z.MOD_NAME = mod_name ~= nil and mod_name or Z.MOD_NAME

    function set_table_values(tbl)
        if type(tbl) == 'table' then
            local key_str = ''
            for k, v in pairs(tbl) do
                key_str = key_str .. '{' .. k .. '=' .. v .. '}'
            end
            tbl = key_str
        end
        return tbl
    end
    function get_table_values(tbl)
        local _values = {}
        tbl = tbl == nil and '' or tbl
        -- если внутри ключа храним данные вида {key1=value1}{key2=value2}{key3=value3}
        for s in string.gmatch(tbl, "{(.-)}") do
            local _key, _value = s:match("%s*([^=]*)%s*%=%s*(.-)%s*$")
            _values[_key] = _value
        end
        if next(_values) then
            return _values
        end
        return tbl
    end

    local salt = 'ZeroAPI.STORAGE.PERSISTENT.' .. Z.MOD_NAME .. '.'
    obj.persistent = {
        -- Установка значения
        set = function(key, value)
            ModSettingSet(salt .. key, set_table_values(value))
        end,
        -- Получение значения
        get = function(key)
            return get_table_values(ModSettingGet(salt .. key))
        end,
        -- Проверка ключа на nil
        has = function(key)
            local _val = ModSettingGet(salt .. key)
            return _val ~= nil and true or false
        end,
        -- Удаление значения
        remove = function(key)
            ModSettingSet(salt .. key, nil)
        end,
    }

    --[[
        Хранилище, используемое в рамках запуска одной игрового забега

        Новый забег: данные не сохраняются
        Перезапуск игры (продолжение забега): данные сохраняются
    --]]
    salt = 'ZeroAPI.STORAGE.RUN.' .. Z.MOD_NAME .. '.'
    obj.run = {
        -- Установка значения
        set = function(key, value)
            GlobalsSetValue(salt .. key, set_table_values(value))
        end,
        -- Получение значения
        get = function(key)
            local _val = get_table_values(GlobalsGetValue(salt .. key))
            return _val ~= '' and _val or nil
        end,
        -- Проверка ключа на nil
        has = function(key)
            local _val = GlobalsGetValue(salt .. key)
            return _val ~= '' and true or false
        end,
        -- Удаление значения
        remove = function(key)
            GlobalsSetValue(salt .. key, '')
        end,
    }

    --[[
        Хранилище, используемое в рамках запуска одной игровой сессии

        Новый забег: данные не сохраняются
        Перезапуск игры (продолжение забега): данные не сохраняются
    --]]
    salt = 'ZeroAPI.STORAGE.SESSION.' .. Z.MOD_NAME .. '.'
    obj.session = {
        -- Установка значения
        set = function(key, value)
            if EntityGetWithName(key) then
                EntityKill(key)
            end
            local e = EntityCreateNew(key)
            EntityAddComponent(e, 'VariableStorageComponent', {
                name='value',
                value_string=set_table_values(value),
            })
        end,
        -- Получение значения
        get = function(key)
            local e = EntityGetWithName(key)
            local variable = EntityGetFirstComponent(e, 'VariableStorageComponent')
            return get_table_values(ComponentGetValue2(variable, "value_string"))
        end,
        -- Проверка ключа на nil
        has = function(key)
            local _val = nil
            return _val ~= nil and true or false
        end,
        -- Удаление значения
        remove = function(key)

        end,
    }
    salt = 'ZeroAPI.STORAGE.CACHE.' .. Z.MOD_NAME .. '.'
    local path = Z.MOD_PATH .. 'data/zero/cache/'

    obj.cache = {
        set = function(key, value)
            ModTextFileSetContent(path .. key .. '.txt', value)
        end,
        get = function(key)
            return ModTextFileGetContent(path .. key .. '.txt')
        end,
        has = function(key)
            return  ModTextFileGetContent(path .. key .. '.txt') ~= (nil and '') and true or false
        end,
        remove = function(key)
            ModTextFileSetContent(path .. key .. '.txt', '')
        end,
    }

    --[[
        Защита от записи из других модов
    --]]
    function obj.readonly(bool)

    end

    Z.MOD_NAME = mod_name_old
    return setmetatable(obj, {__index = self})
end
