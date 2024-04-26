local blockedFunctions = {"load","loadstring", "addDebugHook", "removeDebugHook", -- DANGER FUNCTIONS FOR ANY INJECTOR
"setGameSpeed", "engineImportTXD", "engineReplaceModel", "setVehicleGravity", "setElementVelocity", "setElementFrozen", "setElementRotation", "setElementAlpha" -- RACE FUNCTIONS
"createExplosion", "createProjectile", "setElementModel", "setVehicleDamageProof", "setElementHealth"} -- TROLL FUNCTIONS

local safeResources = {"race", "cw_essentials", "v_cheetah", "v_garage", "cw_cwhud"}

addDebugHook('preFunction', function(resource, funcName)	
	local safe = false
	for i, v in pairs(safeResources) do
		if getResourceName(resource) == v then
			safe = true
		end
	end
	if not safe then
		triggerServerEvent('injectorUsed', localPlayer, funcName)
		return 'skip' 	
	end	
end
,blockedFunctions)