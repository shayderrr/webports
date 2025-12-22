function onCreate()
    --background stuff
    makeLuaSprite('starfield', 'starfield', -3000, -1000)
    setLuaSpriteScrollFactor('starfield', 0.1, 0.1)

    --sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('starfield', 'starfield', -3000, -1000)
        setLuaSpriteScrollFactor('starfield', 0.1, 0.1)
    end

    addLuaSprite('starfield', false);

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end