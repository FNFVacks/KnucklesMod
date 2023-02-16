function onCreate()
    addHaxeLibrary('FlxTrail', 'flixel.addons.effects')

    runHaxeCode([[
        bfTrail = new FlxTrail(game.boyfriend, null, 4, 4, 0.3, 0.069);
        //bfTrail.framesEnabled = false;
        game.addBehindBF(bfTrail);
    ]])

    --setProperty('healthBar.visible', false)
    --setProperty('healthBarBG.visible', false)
    --setProperty('iconP1.visible', false)
    --setProperty('iconP2.visible', false)

    setProperty('boyfriend.danceEveryNumBeats', 1)
end

function onDestroy()
    runHaxeCode([[
        game.remove(bfTrail);
    ]])
end
 
function onUpdateScore(miss)
    setTextString('scoreTxt', 'Score: ' .. getScore())
end