function onCreate()
    if gfName == "buizel" then      --makes Tails spawn not doing the cheer animations
    setProperty("gf.skipDance", true)
    end
end

function onEvent(n, v1, v2)

    if n == "Set Tails' cheer animation" and gfName == "buizel" then --makes sure the event only works on Tails
        if v1 ~= nil then
            --triggerEvent("Hey!", "GF", "")            --me when i forget .skipDance exists so i resort to a fucking bug to make the script work
            setProperty("gf.skipDance", true) --disables the idle anim if v1 is not blank
        end
        if v2 == "set" and not v1 ~= nil then --re-enables dance anims
            if getPropertyFromClass('Character', 'danced') == true then  --me when danced is a fucking variable
            setProperty("gf.skipDance", false)
            playAnim("gf", "danceRight", true)
            --triggerEvent("Play Animation", "gf", "danceLeft")      --hmmm yes let's use triggerEvent instead of using mfing playAnim(), good one me
            else                                                     --i swear to god what was going on in my head when i made the triggerEevent()s
                setProperty("gf.skipDance", false)
                playAnim("gf", "danceLeft", true)
            end
        end
    end 
end
