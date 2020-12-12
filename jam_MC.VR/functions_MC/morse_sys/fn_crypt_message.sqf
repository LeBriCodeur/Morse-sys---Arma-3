// Aroun LeBriCodeur
// fn_crypt_message.sqf
/* 
player addAction ["Morse test", {
	private _msg = "Aroun";
	private _crypt_arr = [_msg]call DA3F_fnc_crypt_message;
	private _uncrypt_arr = [_crypt_arr]call DA3F_fnc_uncrypt_message;
	hint str [_crypt_arr, _uncrypt_arr];
}];
 */

params[["_msgCryp", "Aroun"]];
private _path = missionConfigFile >> "cfg_morse";
private _msgMorse = [];
private _lettre = "";
private _nums = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
_msgCryp = _msgCryp splitString "";

{
	_lettre = toLower(_x);
	if (_lettre in _nums) then {
		_lettre = format["num_%1", _lettre];
	};
	if (_lettre == " ") then {
		_lettre = "space"
	};
	_msgMorse pushBack (getArray (_path >> _lettre));
} forEach _msgCryp;
hint str _msgMorse;
_msgMorse;