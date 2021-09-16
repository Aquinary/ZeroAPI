function Z:Storage(mod_name)
    local obj = {}
    --[[
        Постоянное хранилище, которое работает до тех пор, пока не будет выключен мод.

        Новый забег: данные сохраняются
        Перезапуск игры (продолжение забега): данные сохраняются
    --]]

    -- Если хотим получить доступ к данным из других модов
    Z.MOD_NAME_OLD = Z.MOD_NAME
    Z.MOD_NAME = mod_name ~= nil and mod_name or Z.MOD_NAME

    local salt = 'ZeroAPI.STORAGE.PERSISTENT.' .. Z.MOD_NAME .. '.'
    obj.persistent = {
        -- Установка значения
        set = function(key, value)
            ModSettingSet(salt .. key, value)
        end,
        -- Получение значения
        get = function(key)
            return ModSettingGet(salt .. key)
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
            GlobalsSetValue(salt .. key, value)
        end,
        -- Получение значения
        get = function(key)
            local _val = GlobalsGetValue(salt .. key)
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

        end,
        -- Получение значения
        get = function(key)
            return nil
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

    return setmetatable(obj, {__index = self})
end
