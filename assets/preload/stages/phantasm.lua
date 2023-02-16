bgCheck = true;
x = -842;
y = -551;
function onCreate()
	makeLuaSprite('kn', 'BG/phantasm/phantasm2', x, y);
	makeLuaSprite('we', 'BG/phantasm/phantasm1', x, y-1);
	scaleObject('we', 7,7);
	setProperty('kn.antialiasing', false);
	scaleObject('kn', 7,7);
		setProperty('we.antialiasing', false);
		addLuaSprite('kn', false);		
end


function onEvent(n, value1, value2)   --this handles the stage switching. if the set property events have been removed, let me know and i'll re-code it.
	if n == "Set Property" and bgCheck then
		if getPropertyFromClass("ClientPrefs", "flashing") then
			cameraFlash("game", "FFFF00", 0.4, true)
			--debugPrint("case flash")
		else
			
			cameraFlash("game", "000000", 0.4, true)
			--debugPrint("case photosensitive mode")
		end
		
		--debugPrint("executed change")
		addLuaSprite("we", false)
		removeLuaSprite("kn", false)
		bgCheck = false
	elseif n == "Set Property" and not bgCheck then
		if getPropertyFromClass("ClientPrefs", "flashing") then
			cameraFlash("game", "FF0000", 0.4, true)
		--	debugPrint("case flash")
		else
			
			cameraFlash("game", "000000", 0.4, true)
		--	debugPrint("case photosensitive mode")
		end
		bgCheck = true;
		addLuaSprite("kn", false)
		removeLuaSprite("we", false)
	end
end