/*
	Generated	:	Apps Mission Creator by Aroun Le BriCodeur
	Author		:	Aroun
	File		:	RemoteExec.hpp
	Project		:	jam20
	Do it		:	11/12/2020 23:55:08
*/

#define F(NAME,TARGET) class NAME { \
	allowedTargets = TARGET; \
};

#define JIP(NAME,TARGET) class NAME { \
	allowedTargets = TARGET; \
	jip = 1; \
};

	#define ANYONE 0
	#define CLIENT 1
	#define SERVER 2
	#define HC My_Server

	class CfgRemoteExec
	{
		class Functions
		{
			mode = 1;
			jip = 0;
		};

	class Commands
	{
		F(hint, ANYONE)
		F(hintSilent, ANYONE)
		F(systemChat, ANYONE)
		F(selectLeader, ANYONE)
		F(addHandgunItem, ANYONE)
		F(addMagazine, ANYONE)
		F(addPrimaryWeaponItem, ANYONE)
		F(addWeapon, ANYONE)
		F(addAction, ANYONE)
		F(setFuel, ANYONE)
		F(lock, ANYONE)
		F(setFuelCargo, ANYONE)
		F(failMission, ANYONE)
		F(disableCollisionWith, ANYONE)
	};
};
