
function onCreate()
		makeAnimatedLuaSprite('bg1', 'BG/balloon/BalNewtrogic', -520, -780);
		scaleObject('bg1', 7,7);
		setProperty('bg1.antialiasing', false);
		addAnimationByPrefix("bg1", "BalNewtrogic", "BalNewtrogic")
		addLuaSprite('bg1', false);		
end
