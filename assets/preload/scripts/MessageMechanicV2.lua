local showingMessage = false

-- 145 for sliding in and out (doTweenY)

function onCreate()
    luaDebugMode = true
    --precacheSound('whisper1')
end

function showMessage(text, textX, textY, textNameColor, textName, fadeTime, suffix)
    suffixExternal = suffix

    if not luaTextExists('messageScreen' .. suffix) then
        makeLuaText('messageScreen' .. suffix, '', 0, textX, textY)
        setObjectCamera('messageScreen' .. suffix, 'other') -- hud (comment out?)
        setProperty('messageScreen' .. suffix .. '.alpha', 0)
        setTextSize('messageScreen' .. suffix, 28)
    end

    if not luaSpriteExists('messageBG' .. suffix) then
        makeLuaSprite('messageBG' .. suffix, '', textX, textY)
        setObjectCamera('messageBG' .. suffix, 'other') -- hud
        makeGraphic('messageBG' .. suffix, getProperty('messageScreen' .. suffix .. '.width'), getProperty('messageScreen' .. suffix .. '.height'), '000000')
        setProperty('messageBG' .. suffix .. '.alpha', 0)
    end

    if not luaSpriteExists('messageName' .. suffix) then
        makeLuaText('messageName' .. suffix, '', 0, textX, textY)
        setObjectCamera('messageName' .. suffix, 'other') -- hud (comment out?)
        setProperty('messageName' .. suffix .. '.alpha', 0)
        setTextSize('messageName' .. suffix, 28)
    end

    showingMessage = true
    
    setProperty('messageBG' .. suffix .. '.x', textX)
    setProperty('messageBG' .. suffix .. '.y', textY)

    setProperty('messageName' .. suffix .. '.x', getProperty('messageBG' .. suffix .. '.x') + (getProperty('messageName' .. suffix .. '.width') / 4))
    setProperty('messageName' .. suffix .. '.y', getProperty('messageBG' .. suffix .. '.y') + (getProperty('messageName' .. suffix .. '.height') / 4))

    setTextString('messageName' .. suffix, textName .. ': ')
    setTextColor('messageName' .. suffix, textNameColor)
    addLuaText('messageName' .. suffix)

    setProperty('messageScreen' .. suffix .. '.x', getProperty('messageBG' .. suffix .. '.x') + (getProperty('messageName' .. suffix .. '.width')))
    setProperty('messageScreen' .. suffix .. '.y', getProperty('messageBG' .. suffix .. '.y') + (getProperty('messageScreen' .. suffix .. '.height') / 4))

    setTextString('messageScreen' .. suffix, text)
    addLuaText('messageScreen' .. suffix)

    addLuaSprite('messageBG' .. suffix, false)
    doTweenAlpha('appearMessageBG' .. suffix, 'messageBG' .. suffix, 0.5, 0.25, 'circOut')

    --doTweenY('showMessageScreen', 'messageScreen', textY + 10, 0.25, 'circOut')
    doTweenAlpha('appearMessageScreen' .. suffix, 'messageScreen' .. suffix, 1, 0.25, 'circOut')
    doTweenAlpha('appearMessageName' .. suffix, 'messageName' .. suffix, 1, 0.25, 'circOut')
    runTimer('fadeMessage_disappear' .. suffix, fadeTime / playbackRate)

    setGraphicSize('messageBG' .. suffix, getProperty('messageScreen' .. suffix .. '.width') + (getProperty('messageBG' .. suffix .. '.width') / 2) + getProperty('messageName' .. suffix .. '.width'), getProperty('messageScreen' .. suffix .. '.height') * 1.5)
    --playSound('whisper1')

    function onTimerCompleted(tag, loops, loopsLeft)
        if tag == 'fadeMessage_disappear' .. suffix and showingMessage then
            --doTweenY('hideMessageScreen', 'messageScreen', textY, 0.25, 'circOut')
            doTweenAlpha('disappearMessageScreen' .. suffix, 'messageScreen' .. suffix, 0, 0.25, 'circOut')
            doTweenAlpha('disappearMessageName' .. suffix, 'messageName' .. suffix, 0, 0.25, 'circOut')
            doTweenAlpha('disappearMessageBG' .. suffix, 'messageBG' .. suffix, 0, 0.25, 'circOut')
        
            showingMessage = false
        end
    end
end

function onUpdate(elapsed)
    --setProperty('messageScreen.y', getMidpointY('messageBG') - (getProperty('messageBG.y') / 10))
end

function onEvent(eventName, value1, value2)
    v1 = stringSplit(value1, ',')
    v2 = stringSplit(value2, ',')

    if eventName == 'Show Message' then
        showMessage(v1[1], v1[2], v1[3], v2[1], v2[2], v2[3], v2[4])
    end
end
