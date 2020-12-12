/*
	Generated	:	Apps Mission Creator by Aroun Le BriCodeur
	Author		:	Aroun
	File		:	init.sqf
	Project		:	jam20
	Do it		:	11/12/2020 23:55:08
*/

player addAction ["Tp effect", {
	[]spawn {
		// fnc effect light tp
		// by Aroun LeBriCodeur
		private _pos = getPos player;
		private _value = 800;
		private _timeShake = 7;
		private _light = objNull;
		private _chroma = ppEffectCreate ["ChromAberration", 200];
		playSound3D ["Hazendarck_JAM_SOUNDS\Script\tp\acouphene.ogg", player];
		_chroma ppEffectEnable true;
		_chroma ppEffectAdjust [0.1, 0.1, true];
		_chroma ppEffectCommit 2;
		addCamShake[3, _timeShake, 5];
		cutText ["", "WHITE IN", 1];
		_light = "#lightpoint" createvehiclelocal _pos;
		_light setposatl [_pos select 0, _pos select 1, (_pos select 2) + 10];
		_light setLightDayLight true;
		_light setLightBrightness _value;
		_light setLightAmbient [0.05, 0.05, 0.5];
		_light setlightcolor [1, 1, 2];
		sleep 0.1;
		for "_i" from _value to 0 step -5 do {
			_light setLightBrightness _i;
			sleep 0.01;
		};
		_chroma ppEffectEnable false;
		ppEffectDestroy _chroma;
		sleep 3;
		deletevehicle _light;
	};
}];

player addAction ["Morse test", {
	private _msg = "Aroun est le bg 31";
	private _crypt_arr = [_msg]call DA3F_fnc_crypt_message;
	private _uncrypt_arr = [_crypt_arr]call DA3F_fnc_uncrypt_message;
	copyToClipboard str [_crypt_arr, _uncrypt_arr];
	hint str [_crypt_arr, _uncrypt_arr];
}];

player addAction ["Morse arr to lettre", {
	[
		[[".", "_"], [".", "_", "."], ["_", "_", "_"], [".", ".", "_"], ["_", "."]]
	]call DA3F_fnc_uncrypt_message;
}];