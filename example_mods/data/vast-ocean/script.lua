local allowCountdown = false
local startedFirstDialogue = false
local startedEndDialogue = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not startedFirstDialogue then
	--if not allowCountdown and not startedFirstDialogue then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		startedFirstDialogue = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then
		startDialogue('dialogue', 'dialogueBGM');
	end
end

function onCreate()
	timing = 120 / bpm * 0.5
	makeLuaSprite('three', 'luke/3', 0, 0)
	setObjectCamera('three', 'HUD');
	makeLuaSprite('two', 'luke/2', 0, 0)
	setObjectCamera('two', 'HUD');
	makeLuaSprite('one', 'luke/1', 0, 0)
	setObjectCamera('one', 'HUD');
	makeLuaSprite('go', 'luke/lgo', 0, 0)
	setObjectCamera('go', 'HUD');
	setProperty('three.visible', false);
	setProperty('two.visible', false);
	setProperty('one.visible', false);
	setProperty('go.visible', false);
	addLuaSprite('three', true)
	addLuaSprite('two', true)
	addLuaSprite('one', true)
	addLuaSprite('go', true)
end


function onStepHit()
	if curStep == 48 then
		setProperty('three.visible', true);
		
	end
	if curStep == 50 then
		doTweenAlpha('Three', 'three', 0, timing * 0.5)
	end
	if curStep == 52 then
		setProperty('two.visible', true);
		
		setProperty('three.visible', false);
	end
	if curStep == 54 then
		doTweenAlpha('Two', 'two', 0, timing * 0.5)
	end
	if curStep == 56 then
		setProperty('one.visible', true);
		
		setProperty('two.visible', false);
	end
	if curStep == 58 then
		doTweenAlpha('One', 'one', 0, timing * 0.5)
	end
	if curStep == 60 then
		setProperty('go.visible', true);
		
		setProperty('one.visible', false);
	end
	if curStep == 62 then
		doTweenAlpha('Go', 'go', 0, timing * 0.5)
	end
	if curStep == 64 then
		setProperty('go.visible', false);
	end
end


function onUpdate(elapsed)

	songPos = getSongPosition()
	local currentBeat = (songPos/3000)*(curBpm/40)
	--noteTweenY('defaultOpponentStrum0', 0, defaultOpponentStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.6)
	--noteTweenY('defaultOpponentStrum1', 1, defaultOpponentStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
	--noteTweenY('defaultOpponentStrum2', 2, defaultOpponentStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
	--noteTweenY('defaultOpponentStrum3', 3, defaultOpponentStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 0.6)

	--noteTweenY('defaultPlayerStrum0', 4, defaultPlayerStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.6)
	--noteTweenY('defaultPlayerStrum1', 5, defaultPlayerStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
	--noteTweenY('defaultPlayerStrum2', 6, defaultPlayerStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
	--noteTweenY('defaultPlayerStrum3', 7, defaultPlayerStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 0.6)
	
	noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 1.2)
	noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 1.2)
	noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 1.2)
	noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 1.2)

	noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 1.2)
	noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 1.2)
	noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 1.2)
	noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 1.2)

end