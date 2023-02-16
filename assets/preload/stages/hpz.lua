
function onCreate()
		makeLuaSprite('bg1', 'BG/cut zone/palace that is hidden', -520, -780);
		scaleObject('bg1', 7,7);
		setProperty('bg1.antialiasing', false);
		--addAnimationByPrefix("bg1", "BalNewtrogic", "BalNewtrogic")
		addLuaSprite('bg1', false);		
		close(false)
end
