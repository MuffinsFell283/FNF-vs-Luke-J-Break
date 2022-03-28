function onCreate()
	-- background shit
	makeLuaSprite('sky', 'luke/day/sky', -500, -400);
	setScrollFactor('sky', 0.5, 0.5);
	
	
	--scaleObject('cloud', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('cloud', 'luke/day/cloud', -500, -400);
		setScrollFactor('cloud', 0.65, 0.65);
		--setProperty('stagelight_right.flipX', true); --mirror sprite horizontally
	end

	makeLuaSprite('ocean', 'luke/day/ocean', -500, -400);
	setScrollFactor('ocean', 0.8, 0.8);

	makeLuaSprite('ground', 'luke/day/ground', -450, -400);
	
	makeLuaSprite('box', 'luke/day/boxetc', -450, -400);

	addLuaSprite('sky', false);
	addLuaSprite('cloud', false);
	addLuaSprite('ocean', false);
	addLuaSprite('ground', false);
	addLuaSprite('box', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end