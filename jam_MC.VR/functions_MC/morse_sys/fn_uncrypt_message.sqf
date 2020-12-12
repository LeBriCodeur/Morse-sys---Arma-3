// Aroun LeBriCodeur
// fn_uncrypt_message.sqf
/* 
player addAction ["Morse test", {
	private _msg = "Aroun";
	private _crypt_arr = [_msg]call DA3F_fnc_crypt_message;
	private _uncrypt_arr = [_crypt_arr]call DA3F_fnc_uncrypt_message;
	hint str [_crypt_arr, _uncrypt_arr];
}];
 */
params[["_msgCryp", [[".", ".", "."], ["_", "_", "_"], [".", ".", "."]]]];
private _path = missionConfigFile >> "cfg_morse";
private _lettre = "";
private _lettres = "";
private _configs = configProperties [missionConfigFile >> "cfg_morse"];
private _arr = [];
private _nums = ["num_1", "num_2", "num_3", "num_4", "num_5", "num_6", "num_7", "num_8", "num_9", "num_0"];
{
	_arr = _x;
	{
		if ((getArray _x) isEqualTo _arr) exitWith {
			_lettre = configName _x;
			if (_lettre isEqualto "space") then {
				_lettre = " "
			};
			
			if (_lettre in _nums) then {
				_lettre = (_lettre splitString "") # 4
			};
			
			_lettres = _lettres + _lettre;
		};
	}forEach (_configs);
}forEach _msgCryp;
_lettres;