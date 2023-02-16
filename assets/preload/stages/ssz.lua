
function onCreate()
	--luaDebugMode = true    --(yes this was giving me that much trouble)
		makeLuaSprite('bg1', 'BG/sky/sky', -520, -780);
		scaleObject('bg1', 7,7);
		setProperty('bg1.antialiasing', false);
		--addAnimationByPrefix("bg1", "BalNewtrogic", "BalNewtrogic")
		addLuaSprite('bg1', false);		
		close(false)
end
