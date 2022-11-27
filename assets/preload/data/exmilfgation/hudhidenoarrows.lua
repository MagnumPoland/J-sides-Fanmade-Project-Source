function onCountdownTick(counter)
    if counter == 0 then

        setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)

    end
    if counter == 1 then

        setProperty('botplayTxt.visible', false)
        setProperty('scoreTxt.visible', false)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
    end
    if counter == 2 then

        setProperty('timeTxt.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeBarBG.visible', false)
    end
    if counter == 3 then

        setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)
        setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)
    end
end