#include <dynamic>
#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name = "WeaponInfo",
	author = "Neuro Toxin",
	description = "A dynamic library that stores CS:GO weapon information",
	version = "0.0.1",
	url = ""
}

public APLRes AskPluginLoad2(Handle myself, bool late, char[] error, int err_max)
{
	RegPluginLibrary("weaponinfo");
	CreateNative("WeaponInfo_GetWeaponByItemDefinition", Native_WeaponInfo_GetWeaponByItemDefinition);
	CreateNative("WeaponInfo_GetWeaponByClassname", Native_WeaponInfo_GetWeaponByClassname);
	return APLRes_Success;
}

public void OnPluginStart()
{
	if (!LoadCsgoWeaponInfo())
	{
		// throw plugin error required here
		return;
	}
}

public bool LoadCsgoWeaponInfo()
{
	return false;
}

public int Native_WeaponInfo_GetWeaponByItemDefinition(Handle plugin, int params)
{
	return INVALID_DYNAMIC_OBJECT;
}

public int Native_WeaponInfo_GetWeaponByClassname(Handle plugin, int params)
{
	return INVALID_DYNAMIC_OBJECT;
}
