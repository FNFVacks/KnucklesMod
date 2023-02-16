
function onCreate()
		makeAnimatedLuaSprite('bg1', 'BG/mush/Misfit', -520, -780);
		scaleObject('bg1', 7,7);
		setProperty('bg1.antialiasing', false);
		addAnimationByPrefix("bg1", "Misfit", "Misfit", 24, false)
		addLuaSprite('bg1', false);		
end


function onSectionHit()
	if curBeat % 7 == 0 then
		playAnim("bg1", "Misfit")
	end
end