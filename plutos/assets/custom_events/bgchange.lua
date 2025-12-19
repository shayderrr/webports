function onEvent(name, value1, value2)
   if name == 'bgchange' then
    makeLuaSprite(value2, value1, 700, 0);
    addLuaSprite(value2, false);
    
    
    
    end
end