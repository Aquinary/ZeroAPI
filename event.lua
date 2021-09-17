--[[
События

--]]

-- Запись кода в файл, именно так получаем имя мода
local function lua_generate()
    local event_func = "local mod_name = '" .. Z.MOD_NAME .. '\'\n'

    event_func = event_func ..
            [[
                dofile("data/zero/zero.lua")(mod_name)

                dofile( "data/scripts/lib/coroutines.lua" )
                dofile_once("data/scripts/lib/utilities.lua")

                local gui = nil
                local gui_frame_fn = nil

                local _entity = EntityGetWithName(mod_name)
                local _component = EntityGetFirstComponent(_entity, 'VariableStorageComponent')
                local path = ComponentGetValue2(_component, 'value_string')

                local storage = Z:Storage()
                local paths = storage.run.get('ZeroAPI.PATHS')

                async(function()
                    gui = GuiCreate()
                    gui_frame_fn = function()
                        for k, v in pairs(paths) do
                            dofile(v)(gui)
                        end
                    end
                end)

                async_loop(function()
                    if gui ~= nil then
                        GuiStartFrame(gui)
                    end

                    if gui_frame_fn ~= nil then
                        gui_frame_fn()
                    end

                    wait(0)
                end)
            ]]

    ModTextFileSetContent('mods/zeroapi/' .. Z.MOD_NAME .. '.lua', event_func)
end
lua_generate()

function Z:Event()
    local obj = {}
    -- .lua скрипты
    obj.lua = {
        start = function(id, path_to_file, framerate)
            local entity_id = EntityCreateNew()
            EntityAddComponent(entity_id, "LuaComponent", {
                script_source_file = path_to_file,
                enable_coroutines = true,
                execute_on_added = true,
                execute_times = 0,
                execute_every_n_frame = framerate,
            });
        end,
    }

    -- gui интерфейсы
    obj.gui = {
        start = function(id, path_to_file)

            -- Запись списка патчей нужна для правильного подключения файлов в обработчике gui
            local data = Z:Storage()
            local paths = data.run.get('ZeroAPI.PATHS')
            paths = paths ~= nil and paths or {}

            if not next(paths) then
                paths['path1'] = path_to_file
            else
                paths['path' .. next(paths)] = path_to_file
            end
            data.run.set('ZeroAPI.PATHS', paths)

            -- костыль, с помощью которого получаю название мода в файле
            local entity_id = EntityCreateNew(Z.MOD_NAME)
            EntityAddComponent(entity_id, "LuaComponent", {
                script_source_file = 'mods/zeroapi/' .. Z.MOD_NAME .. '.lua',
                enable_coroutines = true,
                call_init_function = true,
                execute_on_added = true,
                execute_times = 0,
            });
            EntityAddComponent(entity_id, 'VariableStorageComponent', {
                name=Z.MOD_NAME,
                value_string=path_to_file,
            })
        end,
    }

    return setmetatable(obj, {__index = self})
end
