function onCreate()
    --background stuff
    makeLuaSprite('scientist', 'scientist', -830, -500)
    setLuaSpriteScrollFactor('scientist', 0.1, 0.1)

    --sprites that only load if Low Quality is turned off
    if not lowQuality then
        makeLuaSprite('scientist', 'scientist', -830, -500)
        setLuaSpriteScrollFactor('scientist', 0.1, 0.1)
    end

    makeAnimatedLuaSprite('speakers','officespeakers',-830,-475)addAnimationByPrefix('speakers','dance','officespeakers idle',16,true)
    objectPlayAnimation('speakers','dance',true)
    setScrollFactor('speakers', 0.1, 0.1)

    addLuaSprite('scientist', false);
    addLuaSprite('speakers', false);

    close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end