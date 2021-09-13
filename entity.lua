function Z:Entity(entity)
    local obj = {}

    --[[
        Имя сущности
    --]]
    obj.name = {
        set = function(name)
            EntitySetName(entity, name)
        end,
        get = function()
            return EntityGetName(entity)
        end,
        has = function()
            local _val = EntityGetName(entity)
            return _val ~= '' and true or false
        end,
        remove = function()
            EntitySetName(entity, '')
        end
    }

    --[[
        Теги сущности
    --]]
    function _tags_add(tags)
        if type(tags) ~= 'table' then  -- если передаём единственное значение
            EntityAddTag(entity, tags)
        else  -- если передаётся таблица с тегами
            for key, val in pairs(tags) do
                EntityAddTag(entity, val)
            end
        end
    end

    obj.tags = {
        -- Установка тегов. Метод set перезаписывает ранее существующие теги
        set = function(tags)
            -- Удаляем ранее установленные теги
            local _tags = EntityGetTags(entity)
            for key, val in pairs(_tags:split(',')) do
                EntityRemoveTag(entity, val)
            end
            -- Вносим новые теги
            _tags_add(tags)
        end,
        -- Добавление новых тегов к уже существующим
        add = function(tags)
            _tags_add(tags)
        end,
        -- Получение списка тегов в виде строги
        get = function()
            return tostring(EntityGetTags(entity))
        end,
        -- Получение списка тегов в виде таблицы
        get_table = function()
            local _tags = EntityGetTags(entity)
            return _tags:split(',')
        end,
        has = function(tag)
            return EntityHasTag(entity, tag) == true and true or false
        end,
        remove = function(tags)
            if type(tags) ~= 'table' then
                EntityRemoveTag(entity, tags)
            else
                for key, val in pairs(tags) do
                    EntityRemoveTag(entity, val)
                end
            end
        end,
    }

    return setmetatable(obj, {__index = self})
end
