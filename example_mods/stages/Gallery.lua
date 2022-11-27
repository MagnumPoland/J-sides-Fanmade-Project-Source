--By UpDown LeftRight

--Remaster by Kriptel Pro

-- art shit
length = 0;
images = {
	-- do not touch this
}
local id = 0





-- 									<-- SETTINGS, CHANGE SOME OF THE THINGS HERE-->
local bgSettings = {
	['bgSong'] = "offsetSong",
	['Scroll Value'] = 0.25, -- Background scroll speed
	['Bg Alpha Value'] = 0.75, -- Background alpha value (From 1 to 0)
}
local gallerySettings = {
	['EnablePhotoMode'] = true, -- Will enable Photo Mode to inspect images
	['Shift View Speed'] = 2 -- Default image moving speed while in Photo Mode
}
local inputs = { -- 			<< CHANGE PHOTO MODE INPUTS HERE >>
	--Photo Mode Inputs
	['ZoomOutKey'] = "Z",
	['ZoomInKey'] = "X",
	['PhotoModeKey'] = "C", -- Default Photo Mode Keybinding
}






-- 						<-- OTHER THINGS, SO DON'T TOUCH THIS -->

local inPhoto = false -- Don't change it to true, i warning you
local scrollSpeed = gallerySettings['Shift View Speed']

function onCreate()
	--<		  Add art functions       >--
	--tutorial:
	-- addArt('name','description','color(HEX)','sizeSelected','sizeNotSelected')
	-- example:	addArt('pizdec','vanya','FFA500',5,3)

	addArt('early jsides henchmen','Early jsides henchmen','FFA500',6,3)
	addArt('first storymode sketch custom','Why i do this XDD','FFA500',6,3)
	addArt('la thumbnail','Thumbnail for sneek peek video','FFA500',5,3)
	addArt('lol','Random thumbnail on youtube','FFA500',6,3)
	addArt('XD','Perfect photography, i would say','FFA500',5,3)
	addArt('1na2','Why he want...','FFA500',6,3)
	addArt('2na2','TO SMASH THIS?!','FFA500',6,3)
	addArt('gigachad','He is a gigachad 8)','FFA500',6,3)
	addArt('mad','Mad? Mad? Mad? Mad?','FFA500',6,3)
	addArt('brazil','Alô Brasil! :)', 'FFA500', 6,3)
	addArt('polando','Witaj Polsko! :D', 'FFA500', 6,3)
	addArt('ukraine','Ivano-Frankivsk my childhood', 'FFA500', 6,3)
	addArt('uk','A bit strange, innit?', 'FFA500', 6,3)
	addArt('banger','Banger', 'FFA500', 6,3)
	addArt('kherson', 'League of Legends, Ukrainian Kherson DLC', 'FFA500', 6,3)
	addArt('leak', 'Maybe new design in near future?', 'FFA500', 6,3)
	addArt('heroine', 'Deleted herobrine :)', 'FFA500', 6,3)
	addArt('susus', 'She got caught in 4k LMAO', 'FFA500', 6,3)
	addArt('nft', 'Change my mind', 'FFA500', 5,3)
	addArt('hewant', 'He want to be here so...', 'FFA500', 6,3)
	addArt('bulgaria', 'Woah he is from there', 'FFA500', 6,3)
	addArt('italy', 'She is from there', 'FFA500', 6,3)
	addArt('egypt', 'An.. An EGYPTIAN?!?!?!!', 'FFA500', 6,3)
	addArt('hiding', 'He tried to hide his nationality lmao', 'FFA500', 6,3)
	addArt('sonic', 'Big fella', 'FFA500', 6,3)
	addArt('azerbejdzan', 'Even Azerbaijan is here O_O', 'FFA500', 6,3)
	addArt('big', 'Im stupid', 'FFA500', 6,3)
	addArt('pompeje', 'He was so close...', 'FFA500', 5,3)
	addArt('filip', 'Avencia.jpg (gigachad)', 'FFA500', 6,3)
	addArt('gfnew', 'Hmmmmm', 'FFA500', 6,3)
	addArt('birth', 'What', 'FFA500', 6,3)
	addArt('bruj', 'Bruh', 'FFA500', 6,3)
	addArt('cigarete', 'Weed gf B)', 'FFA500', 6,3)
	addArt('edu', 'Polish education<<<<', 'FFA500', 6,3)
	addArt('outofcontext', 'XD (only polish sorry)', 'FFA500', 6,3)

	length = length - 1;

	-- preload stuff
	makeLuaSprite('fon', 'gallery/onCreate/GalleryBG', 0, 0)
	makeLuaSprite('fon2', 'gallery/onCreate/GalleryBG', 1286, 0)
	precacheSound('scrollMenu')
	precacheSound('cancelMenu')
	for i = 0,length do
		precacheImage('gallery/'..images[i].name) 
		--debugPrint('New path preloaded: gallery/'..images[i].name)
	end
end

function addArt(name,description,color,sizeSelected,sizeNotSelected)
	images[length] = {
		name = name,
		description = description,
		color = color,
		sizeSelected = sizeSelected,
		sizeNotSelected = sizeNotSelected
	}
	length = length + 1;
end
function onStartCountdown(elapsed)

	--for _ in pairs(images) do length = length + 1 end  --Get length of Images
	playMusic(bgSettings['bgSong'])
	fuckHud()
	setProperty('dad.visible', false)


	addLuaSprite('fon')
	addLuaSprite('fon2')
	setObjectCamera('fon', 'other')
	setObjectCamera('fon2', 'other')

	

	makeLuaSprite('bglogo', 'gallery/onCreate/downPart', 0, 500)
	setObjectCamera('bglogo', 'other')

	addLuaSprite('bglogo')

	makeLuaSprite('bglogo2', 'gallery/onCreate/upPart', 0, -500)

	setObjectCamera('bglogo2', 'other')

	addLuaSprite('bglogo2')

	makeLuaSprite('bglogo3', 'gallery/onCreate/upPart', 1280, -500)

	setObjectCamera('bglogo3', 'other')

	addLuaSprite('bglogo3')

	makeLuaSprite('logo', 'gallery/onCreate/logo', 0, 500)
	setObjectCamera('logo', 'other')

	addLuaSprite('logo')


	makeLuaSprite('RightArrow', 'gallery/onCreate/arrow', 550, 990)
	scaleObject('RightArrow', 0.7, 0.7)
	setObjectCamera('RightArrow', 'other')
	addLuaSprite('RightArrow')

	makeLuaSprite('LeftArrow', 'gallery/onCreate/arrow', 450, 990)
	scaleObject('LeftArrow', 0.7, 0.7)
	setObjectCamera('LeftArrow', 'other')
	setProperty('LeftArrow.flipX', true)
	addLuaSprite('LeftArrow')

	--	START TWEENS

	doTweenY('logo1', 'bglogo', 0, 1, 'sineOut')
	doTweenY('logo2', 'bglogo2', 0, 1.2, 'sineOut')
	doTweenY('logo3', 'bglogo3', 0, 1.2, 'sineOut')
	doTweenY('logo4', 'logo', 0, 2, 'sineOut')

	doTweenY('b1', 'LeftArrow', 600, 1.6, 'backOut')
	doTweenY('b2', 'RightArrow', 600, 2, 'backOut')

	--	TWEENS END

	onChange(0)

	makeLuaText('descriptionText', images[id].description, 1000, 155, 10)
	setTextSize('descriptionText', 40)
	addLuaText('descriptionText')

	setTextFont('descriptionText', 'jedenautor.otf')

	setObjectCamera('descriptionText', 'other')


	return Function_Stop;
end

function onUpdate(elapsed)
	--debugPrint(getProperty('RightArrow.scale.x'))
	doTweenColor('fonColor', 'fon', images[id].color, 0.25, 'sineOut')
	doTweenColor('fonColor2', 'fon2', images[id].color, 0.25, 'sineOut')

	--FON START
	setProperty('fon.x', getProperty('fon.x') - bgSettings['Scroll Value'])
	setProperty('fon2.x', getProperty('fon2.x') - bgSettings['Scroll Value'])
	if getProperty('fon.x') <= -1286 then
		setProperty('fon.x', 0)
		setProperty('fon2.x', 1286)
	end

	setProperty('fon.alpha', bgSettings['Bg Alpha Value'])
	setProperty('fon2.alpha', bgSettings['Bg Alpha Value'])
	--FON END

	--scroll2 start

	setProperty('bglogo2.x', getProperty('bglogo2.x')-elapsed*100)
	setProperty('bglogo3.x', getProperty('bglogo3.x')-elapsed*100)
	if getProperty('bglogo2.x') <= -1280 then
		setProperty('bglogo2.x', 0)
		setProperty('bglogo3.x', 1280)
	end

	--scroll2 end


if not inPhoto and gallerySettings['EnablePhotoMode'] then
	if keyJustPressed('right') then
		playSound('scrollMenu')
		--id = id + 1
		onChange(1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorRight', 'RightArrow', '808080', -1)
		runTimer('right', 0.1)
	end
	if keyJustPressed('left') then
		playSound('scrollMenu')
		--id = id - 1
		onChange(-1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorLeft', 'LeftArrow', '808080', -1)
		runTimer('left', 0.1)
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..inputs['PhotoModeKey']) then
		inPhoto = true
	end
elseif inPhoto and gallerySettings['EnablePhotoMode'] then
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..inputs['PhotoModeKey']) then
		inPhoto = false
	end
elseif not gallerySettings['EnablePhotoMode'] then
	if keyJustPressed('right') then
		playSound('scrollMenu')
		--id = id + 1
		onChange(1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorRight', 'RightArrow', '808080', -1)
		runTimer('right', 0.1)
	end
	if keyJustPressed('left') then
		playSound('scrollMenu')
		--id = id - 1
		onChange(-1)
		setTextString('descriptionText', images[id].description)
		doTweenColor('ColorLeft', 'LeftArrow', '808080', -1)
		runTimer('left', 0.1)
	end
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..inputs['PhotoModeKey']) then
		inPhoto = false
	end
end

	if keyJustPressed('back') then
		playSound('cancelMenu')
		endSong()
		return Function_Continue;
	end
	-- 									<-- Photo Mode ;-; -->
	if inPhoto then
		doTweenAlpha('leftImageBrr', 'left2', 0, 0.1, 'sineOut')
		doTweenAlpha('RightImageBrr', 'Right2', 0, 0.1, 'sineOut')

		doTweenAlpha('descriptionTextAlpha', 'descriptionText', 0, 0.1, 'sineOut')

		doTweenAlpha('LogoImageBrr', 'logo', 0, 0.1, 'sineOut')
		doTweenAlpha('BgLogoBrr', 'bglogo', 0, 0.1, 'sineOut')
		doTweenAlpha('BgLogo2Brr', 'bglogo2', 0, 0.1, 'sineOut')
		doTweenAlpha('BgLogo3Brr', 'bglogo3', 0, 0.1, 'sineOut')

		doTweenAlpha('rightButton', 'RightArrow', 0, 0.1, 'sineOut')
		doTweenAlpha('leftButton', 'LeftArrow', 0, 0.1, 'sineOut')
		--							--> CONTROLS OR SMTH <--

		if keyPressed('left') then
			setProperty('Middle2.x', getProperty('Middle2.x') - scrollSpeed)
		end
			if keyPressed('right') then
			setProperty('Middle2.x', getProperty('Middle2.x')+ scrollSpeed)
			end
				if keyPressed('down') then
				setProperty('Middle2.y', getProperty('Middle2.y')+ scrollSpeed)
				end
					if keyPressed('up') then
					setProperty('Middle2.y', getProperty('Middle2.y')- scrollSpeed)
					end

		if keyPressed('space') then
			scrollSpeed = gallerySettings['Shift View Speed'] + 2
		else
			scrollSpeed = gallerySettings['Shift View Speed']
		end

		if getPropertyFromClass('flixel.FlxG', 'keys.pressed.'..inputs['ZoomInKey']) then
		setProperty('Middle2.scale.x', getProperty('Middle2.scale.x')+0.01)
		setProperty('Middle2.scale.y', getProperty('Middle2.scale.y')+0.01)
		elseif getPropertyFromClass('flixel.FlxG', 'keys.pressed.'..inputs['ZoomOutKey']) and getProperty('Middle2.scale.x') >= 0.1 then
		setProperty('Middle2.scale.x', getProperty('Middle2.scale.x')-0.01)
		setProperty('Middle2.scale.y', getProperty('Middle2.scale.y')-0.01)
		end

	else
		doTweenAlpha('leftImageBrr', 'left2', 1, 0.25, 'sineOut')
		doTweenAlpha('RightImageBrr', 'Right2', 0.5, 0.25, 'sineOut')

		doTweenAlpha('descriptionTextAlpha', 'descriptionText', 1, 0.25, 'sineOut')

		doTweenAlpha('LogoImageBrr', 'logo', 1, 0.25, 'sineOut')
		doTweenAlpha('BgLogoBrr', 'bglogo', 1, 0.25, 'sineOut')
		doTweenAlpha('BgLogo2Brr', 'bglogo2', 1, 0.25, 'sineOut')
		doTweenAlpha('BgLogo3Brr', 'bglogo3', 1, 0.25, 'sineOut')

		doTweenX('BackMiddleX', 'Middle2', 380, 0.15, 'sineOut')
		doTweenY('BackMiddleY', 'Middle2', 100, 0.15, 'sineOut')

		doTweenAlpha('rightButton', 'RightArrow', 1, 0.15, 'sineOut')
		doTweenAlpha('leftButton', 'LeftArrow', 1, 0.15, 'sineOut')

		setGraphicSize('Middle2', images[id].sizeSelected * 100)
	end
end
function onChange(num)
id = id + num
	
if (id < 0) then
	id = length ;
end
if (id > length) then
	id = 0;
end
if id == 0 then
	makeLuaSprite('left2', 'gallery/'..images[length].name, 60, 100)
	makeLuaSprite('Middle2', 'gallery/'..images[id].name, 300, 100)
	makeLuaSprite('Right2', 'gallery/'..images[id + 1].name, 280*3, 100)

	setGraphicSize('left2', images[length].sizeNotSelected * 100)
	setGraphicSize('Right2', images[id + 1].sizeNotSelected * 100)
elseif id == length  then
	makeLuaSprite('left2', 'gallery/'..images[id-1].name, 60, 100)
	makeLuaSprite('Middle2', 'gallery/'..images[id].name, 300, 100)
	makeLuaSprite('Right2', 'gallery/'..images[0].name, 280*3, 100)

	setGraphicSize('left2', images[id-1].sizeNotSelected * 100)
	setGraphicSize('Right2', images[0].sizeNotSelected * 100)
else
	makeLuaSprite('left2', 'gallery/'..images[id-1].name, 60, 100)
	makeLuaSprite('Middle2', 'gallery/'..images[id].name, 300, 100)
	makeLuaSprite('Right2', 'gallery/'..images[id +1 ].name, 280*3, 100)

	setGraphicSize('left2', images[id-1].sizeNotSelected * 100)
	setGraphicSize('Right2', images[id + 1].sizeNotSelected * 100)
end
	setGraphicSize('Middle2', images[id].sizeSelected * 100)

	setProperty('left2.alpha', 0.5)
	setProperty('Middle2.alpha', 1)
	setProperty('Right2.alpha', 0.5)

	addLuaSprite('left2')
	addLuaSprite('Right2')
	addLuaSprite('Middle2')

	setObjectCamera('left2', 'Other')
	setObjectCamera('Middle2', 'Other')
	setObjectCamera('Right2', 'Other')

	setObjectOrder('left2',getObjectOrder('bglogo'))
	setObjectOrder('Right2',getObjectOrder('bglogo'))
	setObjectOrder('Middle2',getObjectOrder('bglogo'))
	

end
function fuckHud()
		setProperty('scoreTxt.visible', false)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
end

function onTimerCompleted(tag) --for buttons thing
	if tag == 'right' then
		doTweenColor('ColorRight', 'RightArrow', 'FFFFFF', 0.1)
	end
	if tag == 'left' then
		doTweenColor('ColorLeft', 'LeftArrow', 'FFFFFF', 0.1)
	end
end