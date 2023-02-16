function onCreatePost()
    if not (boyfriendName == "mewhen" or boyfriendName == "knucks" or boyfriendName == "Tails" or boyfriendName == "knucksNPC" or boyfriendName == "he pissed on my fucking wife" or boyfriendName == "knuxPhantasm") and not boyfriendName == 'bf' then
        --if player isnt a character with a death animation, set it to default
        setPropertyFromClass('GameOverSubstate', 'characterName', "mewhen")

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');
    elseif boyfriendName == "mewhen" or boyfriendName == "knucks" or boyfriendName == "Tails" or boyfriendName == "knucksNPC" or boyfriendName == "he pissed on my fucking wife" or boyfriendName == "knuxPhantasm" then
        --otherwise, set the death screen character to whichever you're currently playing as.
        setPropertyFromClass('GameOverSubstate', 'characterName', boyfriendName)

        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');
    end

    if boyfriendName == 'knucks' or boyfriendName == 'knucksNPC' or boyfriendName == 'Tails' or boyfriendName == 'knuxPhantasm' then
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_KNUCK');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver_KNUCK-pixel');
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
    elseif not boyfriendName == 'knucks' or not boyfriendName == 'knucksNPC' or not boyfriendName == 'Tails' or boyfriendName == 'knuxPhantasm' then
        setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
        setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');
    
    end
end

function onUpdate()
    if inGameOver and boyfriendName == 'knucks' or boyfriendName == 'knucksNPC' or boyfriendName == 'Tails' or boyfriendName == 'knuxPhantasm' then
        setPropertyFromClass('flixel.FlxG', 'sound.music.looped', false)
    else
        setPropertyFromClass('flixel.FlxG', 'sound.music.looped', true)
    end
end