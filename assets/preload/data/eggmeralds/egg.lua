function onCreate()
    makeLuaSprite("egg", "icons/icon-egg-pixel", 0, 0)
    setProperty("egg.antialiasing", false)
    setObjectCamera("egg", "camHUD")
end

function onUpdate(elapsed)
    if dadName == "eggman" or dadName == "eggman2" then
        if luaSpriteExists("egg") then
            addLuaSprite("egg", true)
            setProperty("iconP2.alpha", 0)
            setObjectOrder("egg", getObjectOrder("iconP2"))

            setProperty("egg.x", getProperty("iconP2.x")-50)
            setProperty("egg.y", getProperty("iconP2.y")+27)
            setProperty("egg.scale.y", getProperty("iconP2.scale.y"))
            setProperty("egg.scale.x", getProperty("iconP2.scale.x"))
        end
    end
end