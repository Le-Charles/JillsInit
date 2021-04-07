local function JillsInit()
	PickupMacro("tdtest") PlaceAction(1) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(2) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(3) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(4) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(5) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(6) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(7) --Main Action Bar
	PickupMacro("tdtest") PlaceAction(14) --FUCK
	PickupMacro("tdtest") PlaceAction(15) --Fuck me
	PickupMacro("tdtest") PlaceAction(49) --Self Bubble
	JillsInitFrame:Hide()
	JillsInitComplete()
end

local JillsInitFrame = CreateFrame("Button","JillsInitFrame",UIParent,"ActionButtonTemplate")
JillsInitFrame:SetHeight(60)
JillsInitFrame:SetWidth(60)
JillsInitFrame:SetPoint("Center",UIParent,"Center",0,-250)

local JillsInitFrameTexture = JillsInitFrame:CreateTexture("JillsInitFrameTexture","OVERLAY")
JillsInitFrameTexture:SetAllPoints(JillsInitFrame)
JillsInitFrameTexture:SetTexture("Interface\\ICONS\\Trade_Engineering.blp")
JillsInitFrame.texture = JillsInitFrameTexture

local function JillsInitComplete()
	DEFAULT_CHAT_FRAME:AddMessage("<3")
end

JillsInitFrame:RegisterForClicks("AnyUp")
JillsInitFrame:SetScript("OnClick", JillsInit)

frame:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...);
end);

for k, v in pairs(events) do
	frame:RegisterEvent(k);
end
