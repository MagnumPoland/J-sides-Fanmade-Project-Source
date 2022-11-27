function onUpdate(elapsed)
    if curStep == 544 then

        setProperty('botplayTxt.visible', false)

        setProperty('scoreTxt.visible', true)

        setProperty('healthBar.visible', true)

        setProperty('healthBarBG.visible', true)

        setProperty('iconP1.visible', true)

        setProperty('iconP2.visible', true)

        setProperty('timeTxt.visible', true)

        setProperty('timeBar.visible', true)

        setProperty('timeBarBG.visible', true)

        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)

    end
end