addEvent('injectorUsed', true)

addDebugHook('preEvent', function(_, _, _, player, _, _, functionName)
	if player and isElement(player) then
		outputChatBox("#ff0000[INJECTOR] #ffffff"..getPlayerName(player).." #ffffffused injector. This is not a fucking bug.", root, 255, 255, 255, true)	
	end
		return 'skip'
	end
, { 'injectorUsed' })