-- 720 = Bottom (Hidden)
-- -360 = Top (Hidden)

function onCreate()
    makeLuaSprite('bar1', '', 0, -360); -- how find top and bottom
    makeLuaSprite('bar2', '', 0, screenHeight); -- how find top and bottom
    makeGraphic('bar1', screenWidth, screenHeight / 2, '000000');
    makeGraphic('bar2', screenWidth, screenHeight / 2, '000000');
    setObjectCamera('bar1', 'other');
    setObjectCamera('bar2', 'other');
    screenCenter('bar1', 'x');
    screenCenter('bar2', 'x');

    --setProperty('camOther.zoom', 0.2)
end

function startCinematic(dest, duration)
    varDest = dest
    varDuration = duration

    addLuaSprite('bar1', false);
    addLuaSprite('bar2', false);
    doTweenY('bar1_show', 'bar1', getProperty('bar1.y') + dest, duration / playbackRate, 'cubeInOut');
    doTweenY('bar2_show', 'bar2', getProperty('bar2.y') - dest, duration / playbackRate, 'cubeInOut');

    doTweenAlpha('hudCinema_active', 'camHUD', 0, duration / playbackRate, 'cubeInOut');
    setProperty('showRating', false)
    setProperty('showComboNum', false)
    --setProperty('camZoomingMult', 0);
end

function onEvent(name, v1, v2)
    if name == 'Trigger Cinematic' then
        startCinematic(v1, crochet*2/1000);
        runTimer('durationCinematic', stepCrochet * v2 / 1000 / playbackRate);

    elseif v1 == null then
    end
end

function onTimerCompleted(tag)
    if tag == 'durationCinematic' then
        doTweenY('bar1_disappear', 'bar1', getProperty('bar1.y') - varDest, varDuration / playbackRate, 'cubeInOut');
        doTweenY('bar2_disappear', 'bar2', getProperty('bar2.y') + varDest, varDuration / playbackRate, 'cubeInOut');
        doTweenAlpha('hudCinema_inactive', 'camHUD', 1, varDuration / playbackRate, 'cubeInOut');
        setProperty('camZoomingMult', 1);
        setProperty('showRating', true)
        setProperty('showComboNum', true)
    end
end

function onTweenCompleted(tag)
    if tag == 'bar1_disappear' and 'bar2_disappear' then
        removeLuaSprite('bar1', false);
        removeLuaSprite('bar2', false);
    end
end