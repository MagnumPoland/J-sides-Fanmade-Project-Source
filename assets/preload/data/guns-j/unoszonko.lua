function onBeatHit()
    
    if curBeat == 224 then
        doTweenY('ascend', 'dad', -5000, 10.3, 'circIn');
        doTweenY('ascend2', 'boyfriend', -5000, 10.3, 'circIn');
        doTweenY('ascend3', 'gf', -5000, 10.3, 'circIn');
    
    
        doTweenY('camera', 'camFollow', -5200, 10.3, 'circIn');
        doTweenAlpha('starsTween', 'stars', 1, 5.15, 'linear');
        doTweenAlpha('cloudsTween', 'tankClouds', 0, 5.15, 'linear');
        doTweenAlpha('skyTween', 'tankSky', 0, 5.15, 'linear');
        doTweenAlpha('groundTween', 'tankGround', 0, 5.15, 'linear');
        doTweenAlpha('mountTween', 'tankMountains', 0, 5.15, 'linear');
        doTweenAlpha('whatisthisTween', 'tankWatchtower', 0, 5.15, 'linear');
        doTweenAlpha('tankTween', 'tankRolling', 0, 5.15, 'linear');
        doTweenAlpha('smokeRIGHTTween', 'smokeRight', 0, 5.15, 'linear');
        doTweenAlpha('smokeLEFTTween', 'smokeLeft', 0, 5.15, 'linear');

    end
end