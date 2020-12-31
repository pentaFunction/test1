--主入口函数。从这里开始lua逻辑
function Main()					
	print("logic start")	
	GameStart() 		
end

--场景切换通知
function OnLevelWasLoaded(level)
	collectgarbage("collect")
	-- Time.timeSinceLevelLoad = 0
end


function GameStart()
	print("GameStart")
	require("GameInit");
	UIPackage.AddPackage('UI/CommonUI')  --公共图集
	UIPackage.AddPackage('UI/Test')

	local ShowUI = require("ShowUI").new("ActivitySign","operate_sign")
	ShowUI:InitCom()

	local ShowUI_1 = require("ShowUI").new("Test","main")
	ShowUI_1:InitCom()
end

function OnApplicationQuit()
end