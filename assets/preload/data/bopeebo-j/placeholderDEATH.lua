
--THIS SHIT WORKS ONLY ON 0.6.3

function onUpdate()  --you can also change function to 'onUpdate()'
if getPropertyFromClass('PlayState', 'deathCounter') > 0 then  --change amount of deaths you need to acess the song
	loadSong('tutorial', 'hard')
return Function_Stop
end
return Function_Continue
end