local allowCountdown = false
local startedFirstDialogue = false
local startedEndDialogue = false

function onEndSong()
	if not allowCountdown and isStoryMode and not startedEndDialogue then
		setProperty('inCutscene', true);
		runTimer('startDialogueEnd', 0.8);
		startedEndDialogue = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogueEnd' then
		startDialogue('dialogueEnd', '');
		
	end
end

function onUpdate(elapsed)
	if curStep >= 128 and curStep < 384 then
		songPos = getSongPosition()
		local currentBeat = (songPos/3000)*(curBpm/20)

		noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.6)

		noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.6)
	end
	if curStep == 384 then
		noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0, 0.5)
		noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1, 0.5)
		noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2, 0.5)
		noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3, 0.5)

		noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0, 0.5)
		noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1, 0.5)
		noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2, 0.5)
		noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3, 0.5)
	end
	if curStep >= 512 and curStep < 640 then
		songPos = getSongPosition()
		local currentBeat = (songPos/3000)*(curBpm/80)

		noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.8)
		noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.8)
		noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.8)
		noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.8)

		noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.8)
		noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.8)
		noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.8)
		noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.8)
	end
	if curStep >= 640 and curStep < 896 then
		songPos = getSongPosition()
		local currentBeat = (songPos/3000)*(curBpm/20)

		noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.6)

		noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.6)

		noteTweenY('defaultOpponentStrum4', 0, defaultOpponentStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenY('defaultOpponentStrum5', 1, defaultOpponentStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenY('defaultOpponentStrum6', 2, defaultOpponentStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenY('defaultOpponentStrum7', 3, defaultOpponentStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 0.6)

		noteTweenY('defaultPlayerStrum4', 4, defaultPlayerStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenY('defaultPlayerStrum5', 5, defaultPlayerStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenY('defaultPlayerStrum6', 6, defaultPlayerStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenY('defaultPlayerStrum7', 7, defaultPlayerStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 0.6)
	end
	if curStep == 896 then
		noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0, 0.6)
		noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1, 0.6)
		noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2, 0.6)
		noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3, 0.6)

		noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0, 0.6)
		noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1, 0.6)
		noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2, 0.6)
		noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3, 0.6)

		noteTweenY('defaultOpponentStrum4', 0, defaultOpponentStrumY0, 0.6)
		noteTweenY('defaultOpponentStrum5', 1, defaultOpponentStrumY1, 0.6)
		noteTweenY('defaultOpponentStrum6', 2, defaultOpponentStrumY2, 0.6)
		noteTweenY('defaultOpponentStrum7', 3, defaultOpponentStrumY3, 0.6)

		noteTweenY('defaultPlayerStrum4', 4, defaultPlayerStrumY0, 0.6)
		noteTweenY('defaultPlayerStrum5', 5, defaultPlayerStrumY1, 0.6)
		noteTweenY('defaultPlayerStrum6', 6, defaultPlayerStrumY2, 0.6)
		noteTweenY('defaultPlayerStrum7', 7, defaultPlayerStrumY3, 0.6)
	end
	if curStep >= 960 and curStep < 1056 then
		songPos = getSongPosition()
		local currentBeat = (songPos/3000)*(curBpm/50)
		noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.6)

		noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 0.6)
		noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 0.6)
	end
	--noteTweenY('defaultOpponentStrum0', 0, defaultOpponentStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.6)
	--noteTweenY('defaultOpponentStrum1', 1, defaultOpponentStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
	--noteTweenY('defaultOpponentStrum2', 2, defaultOpponentStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
	--noteTweenY('defaultOpponentStrum3', 3, defaultOpponentStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 0.6)

	--noteTweenY('defaultPlayerStrum0', 4, defaultPlayerStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 0.6)
	--noteTweenY('defaultPlayerStrum1', 5, defaultPlayerStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
	--noteTweenY('defaultPlayerStrum2', 6, defaultPlayerStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
	--noteTweenY('defaultPlayerStrum3', 7, defaultPlayerStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 0.6)
	
	--noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 1.2)
	--noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 1.2)
	--noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 1.2)
	--noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 1.2)

	--noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 1.2)
	--noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 1.2)
	--noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 1.2)
	--noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 1.2)

end