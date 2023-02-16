local camShuffle = false
local noteShuffle = true

function onBeatHit()
    if curBeat <= 136 then
        if curBeat % 2 == 0 then
            if camShuffle then
                setProperty('camGame.y', getProperty('camGame.y') - 2)
                setProperty('camGame.x', getProperty('camGame.x') - 2)
                doTweenY('cam_toNormal_Y', 'camGame', 0, crochet/1000 / playbackRate, 'circOut')
                doTweenX('cam_toNormal_X', 'camGame', 0, crochet/1000 / playbackRate, 'circOut')
        
                setProperty('camHUD.y', getProperty('camHUD.y') - 3)
                doTweenY('camHUD_moveY', 'camHUD', 0, crochet/1000 / playbackRate, 'circOut')
                doTweenX('camHUD_moveX', 'camHUD', 3, crochet/1000 / playbackRate, 'circOut')
            end
    
            if noteShuffle then
                setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumY2 - 5)
                setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumY3 - 5)
                noteTweenY('tweenNoteDown2_BF', 6, defaultPlayerStrumY2, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown3_BF', 7, defaultPlayerStrumY3, crochet/1000 / playbackRate, 'circOut')
        
                setPropertyFromGroup('opponentStrums', 2, 'y', defaultOpponentStrumY2 - 5)
                setPropertyFromGroup('opponentStrums', 3, 'y', defaultOpponentStrumY3 - 5)
                noteTweenY('tweenNoteDown2_Dad', 2, defaultOpponentStrumY2, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown3_Dad', 3, defaultOpponentStrumY3, crochet/1000 / playbackRate, 'circOut')
        
                
                setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumY0 + 10)
                setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumY1 + 10)
                noteTweenY('tweenNoteDown0_BF', 4, defaultPlayerStrumY0, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown1_BF', 5, defaultPlayerStrumY1, crochet/1000 / playbackRate, 'circOut')
        
                setPropertyFromGroup('opponentStrums', 0, 'y', defaultOpponentStrumY0 + 10)
                setPropertyFromGroup('opponentStrums', 1, 'y', defaultOpponentStrumY1 + 10)
                noteTweenY('tweenNoteDown0_Dad', 0, defaultOpponentStrumY0, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown1_Dad', 1, defaultOpponentStrumY1, crochet/1000 / playbackRate, 'circOut')
            end
        else
            if camShuffle then
                setProperty('camGame.y', getProperty('camGame.y') + 2)
                setProperty('camGame.x', getProperty('camGame.x') + 2)
                doTweenY('cam_toNormal_Y', 'camGame', 0, crochet/1000 / playbackRate, 'circOut')
                doTweenX('cam_toNormal_X', 'camGame', 0, crochet/1000 / playbackRate, 'circOut')
        
                setProperty('camHUD.y', getProperty('camHUD.y') - 3)
                doTweenY('camHUD_moveY', 'camHUD', 0, crochet/1000 / playbackRate, 'circOut')
                doTweenX('camHUD_moveX', 'camHUD', -3, crochet/1000 / playbackRate, 'circOut')
            end
    
            if noteShuffle then
                setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumY0 - 5)
                setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumY1 - 5)
                noteTweenY('tweenNoteDown0_BF', 4, defaultPlayerStrumY0, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown1_BF', 5, defaultPlayerStrumY1, crochet/1000 / playbackRate, 'circOut')
        
                setPropertyFromGroup('opponentStrums', 0, 'y', defaultOpponentStrumY0 - 5)
                setPropertyFromGroup('opponentStrums', 1, 'y', defaultOpponentStrumY1 - 5)
                noteTweenY('tweenNoteDown0_Dad', 0, defaultOpponentStrumY0, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown1_Dad', 1, defaultOpponentStrumY1, crochet/1000 / playbackRate, 'circOut')
        
                setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumY2 + 10)
                setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumY3 + 10)
                noteTweenY('tweenNoteDown2_BF', 6, defaultPlayerStrumY2, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown3_BF', 7, defaultPlayerStrumY3, crochet/1000 / playbackRate, 'circOut')
        
                setPropertyFromGroup('opponentStrums', 2, 'y', defaultOpponentStrumY2 + 10)
                setPropertyFromGroup('opponentStrums', 3, 'y', defaultOpponentStrumY3 + 10)
                noteTweenY('tweenNoteDown2_Dad', 2, defaultOpponentStrumY2, crochet/1000 / playbackRate, 'circOut')
                noteTweenY('tweenNoteDown3_Dad', 3, defaultOpponentStrumY3, crochet/1000 / playbackRate, 'circOut')
            end
        end
    end

    if curBeat == 15 then -- Then shuffles on beat 16.
        camShuffle = true
    end
end