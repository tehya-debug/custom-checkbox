
-- https://github.com/Facepunch/garrysmod/blob/4aefc7d7f468998cd3239c0baa560a389f27d884/garrysmod/lua/vgui/dcheckbox.lua#L6

function DCheckBox:Paint(w, h)
    local boxMaterial = Material("materials/icon16/cross.png", "nomips")
    
    if (self:GetChecked()) then
        boxMaterial = Material("materials/icon16/accept.png", "nomips")
    end

    surface.SetMaterial(boxMaterial)
	surface.SetDrawColor(255, 255, 255)
	surface.DrawTexturedRect(0, 0, w, h)
end
