dofile_once("mods/trinkets/files/scripts/utils.lua")

 
function OnWorldPreUpdate()
    if GetPlayer() ~= nil then

    end
end
 
function OnWorldPostUpdate()
    local player = EntityGetWithTag("player_unit")[1]
    if player ~= nil then
        GuiRender()
    end
end

function GuiRender()
    local gui = GuiCreate()
    
    GuiStartFrame(gui)

    GuiDestroy(gui)
end