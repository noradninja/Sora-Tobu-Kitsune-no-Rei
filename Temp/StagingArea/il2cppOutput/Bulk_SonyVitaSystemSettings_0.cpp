#include "il2cpp-config.h"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif

#include <cstring>
#include <string.h>
#include <stdio.h>
#include <cmath>
#include <limits>
#include <assert.h>
#include <stdint.h>

#include "il2cpp-class-internals.h"
#include "codegen/il2cpp-codegen.h"
#include "il2cpp-object-internals.h"


// System.String
struct String_t;




#ifndef U3CMODULEU3E_T692745549_H
#define U3CMODULEU3E_T692745549_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// <Module>
struct  U3CModuleU3E_t692745549 
{
public:

public:
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
#endif // U3CMODULEU3E_T692745549_H
#ifndef RUNTIMEOBJECT_H
#define RUNTIMEOBJECT_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// System.Object

#ifdef __clang__
#pragma clang diagnostic pop
#endif
#endif // RUNTIMEOBJECT_H
#ifndef VALUETYPE_T3640485471_H
#define VALUETYPE_T3640485471_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// System.ValueType
struct  ValueType_t3640485471  : public RuntimeObject
{
public:

public:
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
// Native definition for P/Invoke marshalling of System.ValueType
struct ValueType_t3640485471_marshaled_pinvoke
{
};
// Native definition for COM marshalling of System.ValueType
struct ValueType_t3640485471_marshaled_com
{
};
#endif // VALUETYPE_T3640485471_H
struct Il2CppArrayBounds;
#ifndef RUNTIMEARRAY_H
#define RUNTIMEARRAY_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// System.Array

#ifdef __clang__
#pragma clang diagnostic pop
#endif
#endif // RUNTIMEARRAY_H
#ifndef SYSTEMSETTINGS_T3809791252_H
#define SYSTEMSETTINGS_T3809791252_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// Sony.Vita.SystemSettings
struct  SystemSettings_t3809791252  : public RuntimeObject
{
public:

public:
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
#endif // SYSTEMSETTINGS_T3809791252_H
#ifndef BOOLEAN_T97287965_H
#define BOOLEAN_T97287965_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// System.Boolean
struct  Boolean_t97287965 
{
public:
	// System.Boolean System.Boolean::m_value
	bool ___m_value_2;

public:
	inline static int32_t get_offset_of_m_value_2() { return static_cast<int32_t>(offsetof(Boolean_t97287965, ___m_value_2)); }
	inline bool get_m_value_2() const { return ___m_value_2; }
	inline bool* get_address_of_m_value_2() { return &___m_value_2; }
	inline void set_m_value_2(bool value)
	{
		___m_value_2 = value;
	}
};

struct Boolean_t97287965_StaticFields
{
public:
	// System.String System.Boolean::FalseString
	String_t* ___FalseString_0;
	// System.String System.Boolean::TrueString
	String_t* ___TrueString_1;

public:
	inline static int32_t get_offset_of_FalseString_0() { return static_cast<int32_t>(offsetof(Boolean_t97287965_StaticFields, ___FalseString_0)); }
	inline String_t* get_FalseString_0() const { return ___FalseString_0; }
	inline String_t** get_address_of_FalseString_0() { return &___FalseString_0; }
	inline void set_FalseString_0(String_t* value)
	{
		___FalseString_0 = value;
		Il2CppCodeGenWriteBarrier((&___FalseString_0), value);
	}

	inline static int32_t get_offset_of_TrueString_1() { return static_cast<int32_t>(offsetof(Boolean_t97287965_StaticFields, ___TrueString_1)); }
	inline String_t* get_TrueString_1() const { return ___TrueString_1; }
	inline String_t** get_address_of_TrueString_1() { return &___TrueString_1; }
	inline void set_TrueString_1(String_t* value)
	{
		___TrueString_1 = value;
		Il2CppCodeGenWriteBarrier((&___TrueString_1), value);
	}
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
#endif // BOOLEAN_T97287965_H
#ifndef UINT32_T2560061978_H
#define UINT32_T2560061978_H
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif

// System.UInt32
struct  UInt32_t2560061978 
{
public:
	// System.UInt32 System.UInt32::m_value
	uint32_t ___m_value_2;

public:
	inline static int32_t get_offset_of_m_value_2() { return static_cast<int32_t>(offsetof(UInt32_t2560061978, ___m_value_2)); }
	inline uint32_t get_m_value_2() const { return ___m_value_2; }
	inline uint32_t* get_address_of_m_value_2() { return &___m_value_2; }
	inline void set_m_value_2(uint32_t value)
	{
		___m_value_2 = value;
	}
};

#ifdef __clang__
#pragma clang diagnostic pop
#endif
#endif // UINT32_T2560061978_H



// System.Boolean Sony.Vita.SystemSettings::PrxSystemSettingsSetPowerLevel(System.UInt32)
extern "C"  bool SystemSettings_PrxSystemSettingsSetPowerLevel_m3538033435 (RuntimeObject * __this /* static, unused */, uint32_t ___level0, const RuntimeMethod* method) IL2CPP_METHOD_ATTR;
// System.UInt32 Sony.Vita.SystemSettings::PrxSystemSettingsGetPowerLevel()
extern "C"  uint32_t SystemSettings_PrxSystemSettingsGetPowerLevel_m4026026583 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method) IL2CPP_METHOD_ATTR;
// System.Boolean Sony.Vita.SystemSettings::PrxBgmAcquire()
extern "C"  bool SystemSettings_PrxBgmAcquire_m3994347853 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method) IL2CPP_METHOD_ATTR;
// System.Boolean Sony.Vita.SystemSettings::PrxBgmRelease()
extern "C"  bool SystemSettings_PrxBgmRelease_m3416623367 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method) IL2CPP_METHOD_ATTR;
// System.Boolean Sony.Vita.SystemSettings::PrxIsBgmAquired()
extern "C"  bool SystemSettings_PrxIsBgmAquired_m2853312535 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method) IL2CPP_METHOD_ATTR;
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
// System.Boolean Sony.Vita.SystemSettings::PrxSystemSettingsSetPowerLevel(System.UInt32)
extern "C"  bool SystemSettings_PrxSystemSettingsSetPowerLevel_m3538033435 (RuntimeObject * __this /* static, unused */, uint32_t ___level0, const RuntimeMethod* method)
{
	typedef int32_t (DEFAULT_CALL *PInvokeFunc) (uint32_t);
	static PInvokeFunc il2cppPInvokeFunc;
	if (il2cppPInvokeFunc == NULL)
	{
		int parameterSize = sizeof(uint32_t);
		il2cppPInvokeFunc = il2cpp_codegen_resolve_pinvoke<PInvokeFunc>(IL2CPP_NATIVE_STRING("SystemSettings"), "PrxSystemSettingsSetPowerLevel", IL2CPP_CALL_DEFAULT, CHARSET_UNICODE, parameterSize, false);

		if (il2cppPInvokeFunc == NULL)
		{
			IL2CPP_RAISE_MANAGED_EXCEPTION(il2cpp_codegen_get_not_supported_exception("Unable to find method for p/invoke: 'PrxSystemSettingsSetPowerLevel'"),NULL);
		}
	}

	// Native function invocation
	int32_t returnValue = il2cppPInvokeFunc(___level0);

	return static_cast<bool>(returnValue);
}
// System.UInt32 Sony.Vita.SystemSettings::PrxSystemSettingsGetPowerLevel()
extern "C"  uint32_t SystemSettings_PrxSystemSettingsGetPowerLevel_m4026026583 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	typedef uint32_t (DEFAULT_CALL *PInvokeFunc) ();
	static PInvokeFunc il2cppPInvokeFunc;
	if (il2cppPInvokeFunc == NULL)
	{
		int parameterSize = 0;
		il2cppPInvokeFunc = il2cpp_codegen_resolve_pinvoke<PInvokeFunc>(IL2CPP_NATIVE_STRING("SystemSettings"), "PrxSystemSettingsGetPowerLevel", IL2CPP_CALL_DEFAULT, CHARSET_UNICODE, parameterSize, false);

		if (il2cppPInvokeFunc == NULL)
		{
			IL2CPP_RAISE_MANAGED_EXCEPTION(il2cpp_codegen_get_not_supported_exception("Unable to find method for p/invoke: 'PrxSystemSettingsGetPowerLevel'"),NULL);
		}
	}

	// Native function invocation
	uint32_t returnValue = il2cppPInvokeFunc();

	return returnValue;
}
// System.Boolean Sony.Vita.SystemSettings::PrxBgmAcquire()
extern "C"  bool SystemSettings_PrxBgmAcquire_m3994347853 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	typedef int32_t (DEFAULT_CALL *PInvokeFunc) ();
	static PInvokeFunc il2cppPInvokeFunc;
	if (il2cppPInvokeFunc == NULL)
	{
		int parameterSize = 0;
		il2cppPInvokeFunc = il2cpp_codegen_resolve_pinvoke<PInvokeFunc>(IL2CPP_NATIVE_STRING("SystemSettings"), "PrxBgmAcquire", IL2CPP_CALL_DEFAULT, CHARSET_UNICODE, parameterSize, false);

		if (il2cppPInvokeFunc == NULL)
		{
			IL2CPP_RAISE_MANAGED_EXCEPTION(il2cpp_codegen_get_not_supported_exception("Unable to find method for p/invoke: 'PrxBgmAcquire'"),NULL);
		}
	}

	// Native function invocation
	int32_t returnValue = il2cppPInvokeFunc();

	return static_cast<bool>(returnValue);
}
// System.Boolean Sony.Vita.SystemSettings::PrxBgmRelease()
extern "C"  bool SystemSettings_PrxBgmRelease_m3416623367 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	typedef int32_t (DEFAULT_CALL *PInvokeFunc) ();
	static PInvokeFunc il2cppPInvokeFunc;
	if (il2cppPInvokeFunc == NULL)
	{
		int parameterSize = 0;
		il2cppPInvokeFunc = il2cpp_codegen_resolve_pinvoke<PInvokeFunc>(IL2CPP_NATIVE_STRING("SystemSettings"), "PrxBgmRelease", IL2CPP_CALL_DEFAULT, CHARSET_UNICODE, parameterSize, false);

		if (il2cppPInvokeFunc == NULL)
		{
			IL2CPP_RAISE_MANAGED_EXCEPTION(il2cpp_codegen_get_not_supported_exception("Unable to find method for p/invoke: 'PrxBgmRelease'"),NULL);
		}
	}

	// Native function invocation
	int32_t returnValue = il2cppPInvokeFunc();

	return static_cast<bool>(returnValue);
}
// System.Boolean Sony.Vita.SystemSettings::PrxIsBgmAquired()
extern "C"  bool SystemSettings_PrxIsBgmAquired_m2853312535 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	typedef int32_t (DEFAULT_CALL *PInvokeFunc) ();
	static PInvokeFunc il2cppPInvokeFunc;
	if (il2cppPInvokeFunc == NULL)
	{
		int parameterSize = 0;
		il2cppPInvokeFunc = il2cpp_codegen_resolve_pinvoke<PInvokeFunc>(IL2CPP_NATIVE_STRING("SystemSettings"), "PrxIsBgmAquired", IL2CPP_CALL_DEFAULT, CHARSET_UNICODE, parameterSize, false);

		if (il2cppPInvokeFunc == NULL)
		{
			IL2CPP_RAISE_MANAGED_EXCEPTION(il2cpp_codegen_get_not_supported_exception("Unable to find method for p/invoke: 'PrxIsBgmAquired'"),NULL);
		}
	}

	// Native function invocation
	int32_t returnValue = il2cppPInvokeFunc();

	return static_cast<bool>(returnValue);
}
// System.Boolean Sony.Vita.SystemSettings::SetPowerLevel(System.UInt32)
extern "C"  bool SystemSettings_SetPowerLevel_m3260551111 (RuntimeObject * __this /* static, unused */, uint32_t ___level0, const RuntimeMethod* method)
{
	bool V_0 = false;
	{
		uint32_t L_0 = ___level0;
		bool L_1 = SystemSettings_PrxSystemSettingsSetPowerLevel_m3538033435(NULL /*static, unused*/, L_0, /*hidden argument*/NULL);
		V_0 = L_1;
		goto IL_000a;
	}

IL_000a:
	{
		bool L_2 = V_0;
		return L_2;
	}
}
// System.UInt32 Sony.Vita.SystemSettings::GetPowerLevel()
extern "C"  uint32_t SystemSettings_GetPowerLevel_m3899826607 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	uint32_t V_0 = 0;
	{
		uint32_t L_0 = SystemSettings_PrxSystemSettingsGetPowerLevel_m4026026583(NULL /*static, unused*/, /*hidden argument*/NULL);
		V_0 = L_0;
		goto IL_0009;
	}

IL_0009:
	{
		uint32_t L_1 = V_0;
		return L_1;
	}
}
// System.Boolean Sony.Vita.SystemSettings::BGMAcquire()
extern "C"  bool SystemSettings_BGMAcquire_m1335375227 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	bool V_0 = false;
	{
		bool L_0 = SystemSettings_PrxBgmAcquire_m3994347853(NULL /*static, unused*/, /*hidden argument*/NULL);
		V_0 = L_0;
		goto IL_0009;
	}

IL_0009:
	{
		bool L_1 = V_0;
		return L_1;
	}
}
// System.Boolean Sony.Vita.SystemSettings::BGMRelease()
extern "C"  bool SystemSettings_BGMRelease_m3938815530 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	bool V_0 = false;
	{
		bool L_0 = SystemSettings_PrxBgmRelease_m3416623367(NULL /*static, unused*/, /*hidden argument*/NULL);
		V_0 = L_0;
		goto IL_0009;
	}

IL_0009:
	{
		bool L_1 = V_0;
		return L_1;
	}
}
// System.Boolean Sony.Vita.SystemSettings::BGMIsAcquired()
extern "C"  bool SystemSettings_BGMIsAcquired_m2602132367 (RuntimeObject * __this /* static, unused */, const RuntimeMethod* method)
{
	bool V_0 = false;
	{
		bool L_0 = SystemSettings_PrxIsBgmAquired_m2853312535(NULL /*static, unused*/, /*hidden argument*/NULL);
		V_0 = L_0;
		goto IL_0009;
	}

IL_0009:
	{
		bool L_1 = V_0;
		return L_1;
	}
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
