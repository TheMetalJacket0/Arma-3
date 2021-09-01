playerRespawnID = [playerSide, player, name player] call BIS_fnc_addRespawnPosition;

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
    // Remove old respawn position
    [playerSide, playerRespawnID ] call BIS_fnc_removeRespawnPosition;

    // Add one for new object
    playerRespawnID = [_unit, _unit, name _unit] call BIS_fnc_addRespawnPosition;
}];
