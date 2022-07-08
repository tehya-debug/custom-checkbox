
-- https://github.com/Facepunch/garrysmod/blob/4aefc7d7f468998cd3239c0baa560a389f27d884/garrysmod/lua/vgui/dcheckbox.lua#L6

local checkedMaterial = Material("icon16/accept.png", "nomips")
local uncheckedMaterial = Material("icon16/cross.png", "nomips")

function DCheckBox:Paint(w, h)
	surface.SetMaterial(self:GetChecked() and checkedMaterial or uncheckedMaterial)
	surface.SetDrawColor(255, 255, 255)
	surface.DrawTexturedRect(0, 0, w, h)
end

function DCheckBox:Toggle()
	if (not self:GetChecked()) then
		self:SetValue(true)
	else
		self:SetValue(false)
	end

	surface.PlaySound("buttons/button14.wav")
end
