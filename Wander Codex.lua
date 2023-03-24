


--SendChatMessage("SnowFiddler" ,"BATTLEGROUP");
PlaySoundFile("Interface\\AddOns\\Wander Codex\\Music\\DreamOfPonder.ogg")
local frame_change = 0
local Frame_Width = 600
local Frame_Height = 600
local Container_Frame = CreateFrame("Frame", nil, UIParent)
Container_Frame:SetPoint("CENTER")
Container_Frame:SetSize(Frame_Width+24, Frame_Height+24 )
Container_Frame:SetMovable(true)
Container_Frame:EnableMouse(true)
Container_Frame:RegisterForDrag("LeftButton")
Container_Frame:SetScript("OnDragStart", Container_Frame.StartMoving)
Container_Frame:SetScript("OnDragStop", Container_Frame.StopMovingOrSizing)
Container_Frame:SetToplevel(false)
Container_Frame:SetFrameLevel(0)
Container_Frame:SetFrameStrata("HIGH")


local texture = Container_Frame:CreateTexture(nil, "BACKGROUND")
texture:SetTexture("interface\\AddOns\\Wander Codex\\blank.blp")
texture:SetAllPoints()
texture:SetColorTexture(0.1,0.1,0.1); 


local Base_Frame = CreateFrame("Frame", nil, Container_Frame)
Base_Frame:SetPoint("CENTER")
Base_Frame:SetSize(Frame_Width, Frame_Height )
Base_Frame:SetMovable(true)
Base_Frame:EnableMouse(true)
Base_Frame:SetToplevel(true)
Base_Frame:SetFrameLevel(1)


-- The code below makes the frame visible, and is not nece

local texture = Base_Frame:CreateTexture(nil, "BACKGROUND")
texture:SetTexture("interface\\AddOns\\Wander Codex\\WC_BG.blp")
texture:SetAllPoints()



local Cover_Frame = CreateFrame("Frame", nill, Container_Frame)
Cover_Frame:SetPoint("CENTER")
Cover_Frame:SetSize(Frame_Width, Frame_Height )
Cover_Frame:SetMovable(true)
Cover_Frame:EnableMouse(true)
Cover_Frame:SetToplevel(true)
Cover_Frame:SetParent(Container_Frame)
Cover_Frame:SetFrameLevel(2)



-- The code below makes the frame visible, and is not nece

local texture = Cover_Frame:CreateTexture(nil, "BACKGROUND")
texture:SetTexture("interface\\AddOns\\Wander Codex\\WC_COVER.blp")
texture:SetAllPoints()


local Animation_Frame = CreateFrame("Frame", nill, Container_Frame)
Animation_Frame:SetPoint("CENTER")
Animation_Frame:SetSize(48,48)
Animation_Frame:SetMovable(true)
Animation_Frame:EnableMouse(true)
Animation_Frame:SetToplevel(true)
Animation_Frame:SetParent(Container_Frame)
Animation_Frame:SetFrameLevel(4)


isOver = MouseIsOver(Animation_Frame, 100,200,100,200)

	if (isOver) then
		-- do something
			print("hello there you are over texture")
	 end

	 Animation_Frame:SetScript("OnMouseDown", function (self, button)
		if button=='LeftButton' then 
			print ('OMG left button?!')
			Cover_Frame:Hide()
		end
	end)
	
	 local highlightTexture = Animation_Frame:CreateTexture(nil, "HIGHLIGHT")
	 highlightTexture:SetAllPoints(true)
	 highlightTexture:SetTexture(1, 1, 0, 0.5)
	 
	 -- The word "Mouse!" will appear on mouseover:
	 local highlightFontString = Animation_Frame:CreateFontString(nil, "HIGHLIGHT", "GameFontNormalLarge")
	 highlightFontString:SetPoint("CENTER")
	 highlightFontString:SetText("Mouse!")

local texture = Animation_Frame:CreateTexture(nil, "BACKGROUND")
texture:SetTexture("interface\\AddOns\\Wander Codex\\crap.blp")
texture:SetAllPoints()

local Container = 0
local step = 1

local FrameStep = 0

local last = GetTime()
local Accumulator = 0
LFG_EYE_TEXTURES = { };

LFG_EYE_TEXTURES["default"] = { file = "interface\\AddOns\\Wander Codex\\crap.blp", width = 64, height = 16, frames = 4, iconSize = 16, delay = 0.1 };
Cover_Frame:SetScript("OnUpdate", function()

local textureInfo = LFG_EYE_TEXTURES["default"];
AnimateTexCoords(texture, textureInfo.width, textureInfo.height, textureInfo.iconSize, textureInfo.iconSize, textureInfo.frames, 0.01, textureInfo.delay)

	--[[ now = GetTime()

    local delta = now - last;
    last = now;
    
    Accumulator = Accumulator + 1;
 
    if(Accumulator >= 1 / delta) then
    
        FrameStep = FrameStep + 1;

       Accumulator = 0;
    
end
    
    if(FrameStep >= 4) then
    FrameStep = 0;
	end
	texture:SetTexCoord(0,1*FrameStep,0,1)

	print(FrameStep)
	 ]]
--tex:SetTexCoord(ULx,ULy,LLx,LLy,URx,URy,LRx,LRy)

	
end)


Cover_Frame.Status_Bar = CreateFrame("StatusBar", nil, Cover_Frame)
Cover_Frame.Status_Bar:SetPoint("BOTTOMLEFT", -3, -3)
Cover_Frame.Status_Bar:SetPoint("BOTTOMRIGHT", -3, 3)
Cover_Frame.Status_Bar:SetHeight(20)
Cover_Frame.Status_Bar:SetMinMaxValues(0,100)
Cover_Frame.Status_Bar:SetValue(50)
Cover_Frame.Status_Bar:SetStatusBarTexture("interface\\AddOns\\Wander Codex\\WC_BG.blp")
Cover_Frame.Status_Bar:GetStatusBarTexture():SetHorizTile(false)
Cover_Frame.Status_Bar:GetStatusBarTexture():SetVertTile(false)
Cover_Frame.Status_Bar:SetStatusBarColor(0,0.65,0)
-- adding a texture

-- widget scripts
Cover_Frame:SetScript("OnEnter", function()
	GameTooltip:SetOwner(Cover_Frame, "ANCHOR_TOPRIGHT")
	GameTooltip:AddLine("HelloWorld!")
	GameTooltip:Show()


	
   
end)
Cover_Frame:SetScript("OnLeave", function()
	GameTooltip:Hide()
   
end)


local f = CreateFrame("Frame", nil, UIParent)




local tx = f:CreateTexture(nil, "BACKGROUND")
tx:SetAllPoints()
tx:SetTexture("interface/icons/inv_mushroom_11")

f.anigroup = f:CreateAnimationGroup() -- Create our animation group

f.spin = f.anigroup:CreateAnimation("Rotation") -- Rotation animation
f.spin:SetOrder(1) -- Play it first, only matters with multiple animations
f.spin:SetDuration(0.08) -- Spin for 0.8 seconds
f.spin:SetDegrees(720) -- Total amount of rotation in degrees

f.scale = f.anigroup:CreateAnimation("Scale") -- Scale animation
f.scale:SetOrder(1) -- Play it at the same time
f.scale:SetDuration(1) -- Take 1 second
f.scale:SetScale(5,5) -- Scale width and height to 500%

f.fade = f.anigroup:CreateAnimation("Alpha") -- Alpha animation
f.fade:SetOrder(2) -- Play after the first group
f.fade:SetDuration(0.5) -- Take 0.5 seconds
f.fade:SetSmoothProgress(0.5) -- Reduce alpha by a factor of 1 (like f:SetAlpha(f:GetAlpha-1))
f.fade:SetEndDelay(0.5) -- Wait 0.5 seconds after finishing before continuing

f.anigroup:SetLooping("BOUNCE") -- Repeat forward and backwards
f.anigroup:Play() -- Start our animation group


Container_Frame:Hide()

local FrameToggle = false
local miniButton = LibStub("LibDataBroker-1.1"):NewDataObject("Wander Codex", {

	type = "data source",
	
	text = "Wander Codex",
	
	icon = "interface\\AddOns\\Wander Codex\\WC_Icon.blp",
	
	OnClick = function(self, btn)
	
		-- OnClick code goes here
		
		if FrameToggle == false then
			Container_Frame:Hide()
			FrameToggle = true

		else 
			Container_Frame:Show()
			FrameToggle = false
		end
		
	end,
	
	OnTooltipShow = function(tooltip)
	
		if not tooltip or not tooltip.AddLine then return end
	
		tooltip:AddLine("Wander Codex")
	
	end,
	
	})
	
	local icon = LibStub("LibDBIcon-1.0", true)
	
	icon:Register("Wander Codex", miniButton, Wander_Codex_DB)


	icon:Show(Wander_Codex_DB)