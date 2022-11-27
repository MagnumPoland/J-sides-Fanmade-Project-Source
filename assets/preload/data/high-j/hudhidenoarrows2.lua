function onUpdate(elapsed)
    if curStep == 672 then

        setProperty('botplayTxt.visible', false)

        setProperty('scoreTxt.visible', false)

        setProperty('healthBar.visible', false)

        setProperty('healthBarBG.visible', false)

        setProperty('iconP1.visible', false)

        setProperty('iconP2.visible', false)

        setProperty('timeTxt.visible', false)

        setProperty('timeBar.visible', false)

        setProperty('timeBarBG.visible', false)

        setPropertyFromGroup('opponentStrums', 0, 'alpha', 1)

        setPropertyFromGroup('opponentStrums', 1, 'alpha', 1)

        setPropertyFromGroup('opponentStrums', 2, 'alpha', 1)

        setPropertyFromGroup('opponentStrums', 3, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)

        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)

    end
end