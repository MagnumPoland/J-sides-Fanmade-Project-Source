function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
        os.execute("wscript assets/NO-CHEATING/ex-no-cheating.vbs");
       os.exit()
    end
end