--ModMagicNumbersFileAdd( "mods/souls/files/magic_numbers.xml" )
ModMaterialsFileAdd("mods/trinkets/files/materials.xml")

dofile_once("mods/trinkets/files/scripts/utils.lua")

dofile_once("mods/trinkets/lib/injection.lua")

-- nxml
local nxml = dofile_once("mods/trinkets/lib/nxml.lua")

-- player
function OnPlayerSpawned(player)

    dofile_once("mods/trinkets/files/gui.lua")

    local px, py = EntityGetTransform(player)

    if GameHasFlagRun("trinkets_init") then return end

    GameAddFlagRun("trinkets_init")
end

-- translations
local translations = ModTextFileGetContent("data/translations/common.csv")
if translations ~= nil then
    while translations:find("\r\n\r\n") do
        translations = translations:gsub("\r\n\r\n","\r\n")
    end
    local new_translations = ModTextFileGetContent(table.concat({"mods/trinkets/files/translations.csv"}))
    translations = translations .. new_translations
    ModTextFileSetContent("data/translations/common.csv", translations)
end

-- genomes
dofile_once("mods/souls/files/scripts/genomes.lua")

function OnPausedChanged(is_paused, is_inventory_pause)
    if is_paused then
        
    end
end