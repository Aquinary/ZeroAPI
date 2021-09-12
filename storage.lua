
function Z:Storage()
    local obj = {}

    --[[
        Постоянное хранилище, которое работает до тех пор, пока не будет выключен мод.
        Перезапуск игры: данные сохраняются
        Начало нового забега: данные сохраняются
    --]]
    obj.persistent = {
        -- Установка нового значения
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

    return setmetatable(obj, {__index = self})
end
