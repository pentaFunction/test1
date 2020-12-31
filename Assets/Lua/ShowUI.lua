local ShowUI = class("ShowUI")
function ShowUI:ctor( packName,comName)
	UIPackage.AddPackage("UI/"..packName);
	local view = UIPackage.CreateObject(packName, comName)
	view:Center();
	GRoot.inst:AddChild(view)
	self.uiViewe = view;
end

function ShowUI:InitCom(  )
	local titleCom = self.uiViewe:GetChild("titleCom")
	self.infoBtn = titleCom:GetChild("infoBtn")
	self.infoBtn.onClick:Add(self.OnInfo, self);
end

function ShowUI:OnInfo(  )
	print("++++++++++++++++点击了info按钮")
end



return  ShowUI
