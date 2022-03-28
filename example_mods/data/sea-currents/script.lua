function onUpdate(elapsed)

	songPos = getSongPosition()
	local currentBeat = (songPos/3000)*(curBpm/60)
	noteTweenY('defaultOpponentStrum0', 0, defaultOpponentStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 1.8)
	noteTweenY('defaultOpponentStrum1', 1, defaultOpponentStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 1.8)
	noteTweenY('defaultOpponentStrum2', 2, defaultOpponentStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 1.8)
	noteTweenY('defaultOpponentStrum3', 3, defaultOpponentStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 1.8)

	noteTweenY('defaultPlayerStrum0', 4, defaultPlayerStrumY0 + 50*math.sin((currentBeat+8*0.25)*math.pi), 1.8)
	noteTweenY('defaultPlayerStrum1', 5, defaultPlayerStrumY1 + 50*math.sin((currentBeat+7*0.25)*math.pi), 1.8)
	noteTweenY('defaultPlayerStrum2', 6, defaultPlayerStrumY2 + 50*math.sin((currentBeat+6*0.25)*math.pi), 1.8)
	noteTweenY('defaultPlayerStrum3', 7, defaultPlayerStrumY3 + 50*math.sin((currentBeat+5*0.25)*math.pi), 1.8)
	
	--noteTweenX('defaultOpponentStrum0', 0, defaultOpponentStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 1.2)
	--noteTweenX('defaultOpponentStrum1', 1, defaultOpponentStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 1.2)
	--noteTweenX('defaultOpponentStrum2', 2, defaultOpponentStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 1.2)
	--noteTweenX('defaultOpponentStrum3', 3, defaultOpponentStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 1.2)

	--noteTweenX('defaultPlayerStrum0', 4, defaultPlayerStrumX0 + 50*math.cos((currentBeat+8*0.25)*math.pi), 1.2)
	--noteTweenX('defaultPlayerStrum1', 5, defaultPlayerStrumX1 + 50*math.cos((currentBeat+7*0.25)*math.pi), 1.2)
	--noteTweenX('defaultPlayerStrum2', 6, defaultPlayerStrumX2 + 50*math.cos((currentBeat+6*0.25)*math.pi), 1.2)
	--noteTweenX('defaultPlayerStrum3', 7, defaultPlayerStrumX3 + 50*math.cos((currentBeat+5*0.25)*math.pi), 1.2)

end