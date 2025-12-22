function onCreate()
    --background stuff
    makeLuaSprite('glitch', 'glitch', -850, -480)
    setLuaSpriteScrollFactor('glitch', 0.1, 0.1)

    --sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('glitch', 'glitch', -850, -480)
        setLuaSpriteScrollFactor('glitch', 0.1, 0.1)
    end

    addLuaSprite('glitch', false);

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end