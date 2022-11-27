truething = false -- to turn off and turn on timer
time = false -- time formula, have to be var because it will show time during pause so yeah
pause = "" -- pause text
weekname = "" -- week name text (makes automatically)
playing = "Viewing the gallery" -- i think you know what does it means, change if idk lol
savePos = 0 -- crutch for lua pause fix
dieee = false -- game won't change playing var if you died with botplay

canshowpopup = true -- turns off and turns on pop up
function onSongStart()
	offset = getPropertyFromClass('ClientPrefs', 'noteOffset')
	truething = true
end
function onEndSong()
	truething = false
	time = ""
end
function onCreate()
	if getPropertyFromClass('PlayState', 'deathCounter') < 1 then
		bbdisplay = ""
	else
		bbdisplay = "Blueballed: " .. getPropertyFromClass('PlayState', 'deathCounter')
	end
	if isStoryMode then
		mode = "Story Mode"
		weekname = ': ' .. week
	else
		mode = "Freeplay"
		weekname = ""
	end
	difficultything = getProperty('storyDifficultyText')
	addLuaScript('scripts/addontest.lua')
end
function onUpdate()
	if getProperty('health') <= 2 then
		hp = " " .. math.ceil(getProperty(' ') * 50) .. "%"
	end
end

function onUpdatePost(elapsed)
	if botPlay and not dieee then
		playing = "BotPlay: "
	end
	songPos = getPropertyFromClass('Conductor', 'songPosition');
	if savePos < songPos - 100 then
		onResume()					-- this thing fixes custom menu that done in .lua, if 80ms elapsed during pause game will count it as resume
	end

	if truething then
		time = songLength - songPos - offset -- literally from source code
	else
		time = false
	end
		changePresence(playing .. ' ' .. ' '  .. bbdisplay, hp, '', truething, time) -- can't fix icons because even psych engine can't use them properly 
end
function onGameOver()
	dieee = true
	hp = ""
	playing = "Game Over: "
	pause = ""
	truething = false
	weekname = ""
	savePos = songPos
	difficultything = getProperty('storyDifficultyText')
	bbdisplay = "Blueballed: " .. getPropertyFromClass('PlayState', 'deathCounter') + 1
end
function onPause()
	pause = "(Paused) "
	truething = false
	savePos = songPos
end
function onResume()
	pause = ""
	if curStep > 0 then
		truething = true
	end
end

