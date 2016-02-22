#if defined _weaponinfo_included_
	#endinput
#endif
#define _weaponinfo_included_

native Dynamic WeaponInfo_GetWeaponByItemDefinition(int itemdef);
native Dynamic WeaponInfo_GetWeaponByClassname(const char[] classname);

methodmap WeaponInfo
{
	public WeaponInfo()
	{
		return 0;
	}
	
	public Dynamic GetWeaponByItemDefinition(int itemdef)
	{
		return WeaponInfo_GetWeaponByItemDefinition(itemdef);
	}
	
	public Dynamic WeaponInfo_GetWeaponByClassname(const char[] classname)
	{
		return WeaponInfo_GetWeaponByClassname(classname);
	}
}

#if !defined REQUIRE_PLUGIN
public __pl_dynamic_SetNTVOptional()
{
	MarkNativeAsOptional("WeaponInfo_GetWeaponByItemDefinition");
	MarkNativeAsOptional("WeaponInfo_GetWeaponByClassname");
}
#endif

public SharedPlugin __pl_weaponinfo = 
{
	name = "weaponinfo",
	file = "weaponinfo.smx",
	#if defined REQUIRE_PLUGIN
		required = 1,
	#else
		required = 0,
	#endif
};
