local NewHUDVersion = true

function onCreate()
    makeLuaText('healthText', '' .. math.floor(getProperty("health") * 50), 90, 80, 450 ..'%')
	makeLuaText('healthTextOpponent', '' .. math.floor(getProperty("health") * 50), 90, 65, 675 ..'%')
    addLuaText('healthText')
    setTextSize('healthText', 25);
end

function onUpdate(elapsed)
    setTextString('healthText', '' .. math.floor(getProperty("health") * 50) ..'%')
	setTextString('healthTextOpponent', '100' - math.floor(getProperty("health") * 50) ..'%')
	
	if getProperty('health') < 0.3 and (not botPlay) then

	    doTweenColor('healthText', 'healthText', 'FF0000', 0.2, 'linear')

	    doTweenColor('iconP1', 'iconP1', 'FF0000', 0.2, 'linear')

	    doTweenColor('healthTextOpponent', 'healthTextOpponent', 'FF0000', 0.2, 'linear')

	    doTweenColor('iconP2', 'iconP2', 'FF0000', 0.2, 'linear')
		

	else

	    doTweenColor('healthText', 'healthText', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('iconP1', 'iconP1', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('healthTextOpponent', 'healthTextOpponent', 'FFFFFF', 0.2, 'linear')

	    doTweenColor('iconP2', 'iconP2', 'FFFFFF', 0.2, 'linear')
		
	end

end

function onUpdatePost()
    setProperty('iconP1.x', 50)
    setProperty('iconP1.y', 275)
	if NewHUDVersion == true then
		setProperty('iconP2.visible', true)
		setProperty('iconP2.x', 30)
		setProperty('iconP2.y', 480)
		setProperty('iconP1.x', 1100)
		setProperty('iconP1.y', 460)
		setProperty('healthText.x', 1035)
		setProperty('healthText.y', 528)
		setProperty('healthTextOpponent.x', 140)
		setProperty('healthTextOpponent.y', 540)
		setProperty('botplayTxt.y', 575)
		setProperty('botplayTxt.x', 240)
		addLuaText('healthTextOpponent')
	    setTextSize('healthTextOpponent', 25);
		setProperty('OpponentName.y', 100)
		scaleObject('iconP1', 0.9, 0.9);
		scaleObject('iconP2', 0.9, 0.9);
	end
end