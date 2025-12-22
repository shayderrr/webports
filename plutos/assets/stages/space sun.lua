function onCreate()
    --background stuff
    makeLuaSprite('sun starfield', 'sun starfield', -3500, -1500)
    setLuaSpriteScrollFactor('sun starfield', 0.1, 0.1)

    --sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('sun starfield', 'sun starfield', -3500, -1500)
        setLuaSpriteScrollFactor('sun starfield', 0.1, 0.1)
        addGlitchEffect('sun starfield', 40, 10, 0.00025)
    end

    addLuaSprite('sun starfield', false);

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end