function onEvent(eventName, value1, value2)
    if eventName == 'Camera Character' then
        if value1 == 'boyfriend' then
            cameraSetTarget('boyfriend')
        elseif value1 == 'dad' then
            cameraSetTarget('dad')
        else
            if luaDebugMode then
                debugPrint('Camera Character: Value 1 must be filled or was done incorrectly!')
            end
        end
    end
end