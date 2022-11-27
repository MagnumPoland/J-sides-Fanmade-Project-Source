function onBeatHit()
    
    if curBeat == 352 then
        doTweenY('ascend', 'dad', 280, 10.3, 'circIn');
        doTweenY('ascend2', 'boyfriend', 450, 10.3, 'circIn');
        doTweenY('ascend3', 'gf', 150, 10.3, 'circIn');
    
    
        doTweenY('camera', 'camFollow', 500, 10.3, 'circIn');
        doTweenAlpha('starsTween', 'stars', 0, 10.3, 'linear');
        doTweenAlpha('cloudsTween', 'tankClouds', 1, 10.3, 'linear');
        doTweenAlpha('skyTween', 'tankSky', 1, 10.3, 'linear');
        doTweenAlpha('groundTween', 'tankGround', 1, 10.3, 'linear');
        doTweenAlpha('mountTween', 'tankMountains', 1, 10.3, 'linear');
        doTweenAlpha('whatisthisTween', 'tankWatchtower', 1, 10.3, 'linear');
        doTweenAlpha('tankTween', 'tankRolling', 1, 10.3, 'linear');
        doTweenAlpha('smokeRIGHTTween', 'smokeRight', 1, 10.3, 'linear');
        doTweenAlpha('smokeLEFTTween', 'smokeLeft', 1, 10.3, 'linear');

    end
end