function Z:Entity(entity)
    local obj = {}

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

    return setmetatable(obj, {__index = self})
end
