function onCreate()
	
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'mayo notes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mayo/mayonote_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'mayo/mayonoteSplashes');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
	
			end
			
			
		function goodNoteHit(id, noteData, noteType, isSustainNote)
		
	if noteType == 'mayo notes' then
	
	triggerEvent('Play Animation', 'MayonnaiseThrow', 0)
	
	runTimer('mayotimer',0.1)
	end

end
	end
	function onTimerCompleted(tag, loops, loopsleft)
	
	if tag =='mayotimer' then
	makeAnimatedLuaSprite('Mayon', 'characters/MayoSprite', math.random(-50, 800), math.random(-100, 500));
	addAnimationByPrefix('Mayon', 'Mayohit', 'Mayo', 24, false)
	setScrollFactor('Mayon',0, 0);
	addLuaSprite('Mayon',true)
	objectPlayAnimation('Mayon','Mayohit', false)
	playSound('MayoSound')

end
	
end


end