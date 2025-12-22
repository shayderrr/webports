function onCreate()
    --background stuff
    makeLuaSprite('beta bg', 'beta bg', -2500, -1000)
    setLuaSpriteScrollFactor('beta bg', 0.1, 0.1)

    --sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('beta bg', 'beta bg', -2500, -1000)
        setLuaSpriteScrollFactor('beta bg', 0.1, 0.1)
    end

    addLuaSprite('beta bg', false);

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end