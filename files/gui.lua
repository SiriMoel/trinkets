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

    local screen_width, screen_height = GuiGetScreenDimensions(gui)

    if GuiButton(gui, 189032128, (screen_width / 3) * 1.8, (screen_height / 9) * 8.5, "[+]", 1) then
        GlobalsSetValue("trinkets.gui_open", tostring(not tobool(GlobalsGetValue("trinkets.gui_open", "false"))))
        GamePrint("yes")
    end

    if tobool(GlobalsGetValue("trinkets.gui_open", "false")) then
        GamePrint("hi")
    end

    GuiDestroy(gui)
end