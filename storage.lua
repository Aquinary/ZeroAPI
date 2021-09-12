
function Z:Storage()
    local obj = {}

    --[[
        Постоянное хранилище, которое работает до тех пор, пока не будет выключен мод.

        Новый забег: данные сохраняются
        Перезапуск игры (продолжение забега): данные сохраняются
    --]]
    obj.persistent = {
        -- Установка значения
        set = function(key, value)
            ModSettingSet(key, value)
        end,
        -- Получение значения
        get = function(key)
            return ModSettingGet(key)
        end,
        -- Проверка ключа на nil
        has = function(key)
            local _val = ModSettingGet(key)
            return _val ~= nil and true or false
        end,
        -- Удаление значения
        remove = function(key)
            ModSettingSet(key, nil)
        end,
    }

    --[[
        Хранилище, используемое в рамках запуска одной игрового забега

        Новый забег: данные не сохраняются
        Перезапуск игры (продолжение забега): данные сохраняются
    --]]
    obj.run = {
        -- Установка значения
        set = function(key, value)
            GlobalsSetValue(key, value)
        end,
        -- Получение значения
        get = function(key)
            local _val = GlobalsGetValue(key)
            return _val ~= '' and _val or nil
        end,
        -- Проверка ключа на nil
        has = function(key)
            local _val = GlobalsGetValue(key)
            return _val ~= '' and true or false
        end,
        -- Удаление значения
        remove = function(key)
            GlobalsSetValue(key, '')
        end,
    }

    --[[
        Хранилище, используемое в рамках запуска одной игровой сессии

        Новый забег: данные не сохраняются
        Перезапуск игры (продолжение забега): данные не сохраняются
    --]]
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
