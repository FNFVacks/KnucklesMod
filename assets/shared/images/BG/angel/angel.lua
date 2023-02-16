function onCreate()
	-- le bg fuckin shit
		makeAnimatedLuaSprite('bg1', 'knuckle/angel/ang1', 0, 0);
		scaleObject('bg1', 0.9,0.9);
		luaSpriteAddAnimationByPrefix('bg1', 'angelislandstage_1_gif', 'angelislandstage_1_gif'); 

		addLuaSprite('bg1', false);
		
	end

	
	
	