function onCreate()
    --background stuff
    makeLuaSprite('small starfield', 'small starfield', -830, -500)
    setLuaSpriteScrollFactor('small starfield', 0.1, 0.1)

    --sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('small starfield', 'small starfield', -830, -500)
        setLuaSpriteScrollFactor('small starfield', 0.1, 0.1)
    end

    addLuaSprite('small starfield', false);

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end