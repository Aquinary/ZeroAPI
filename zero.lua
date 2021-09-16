return function(modname)
    Z = {}
    Z.MOD_NAME = modname
    Z.MOD_PATH = 'mods/' .. modname .. '/'
    dofile_once(Z.MOD_PATH .. 'data/zero/prepare.lua')
end
