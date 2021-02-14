
Unity PS Vita System Settings API.

This example project demonstrates how to modify various Vita system settings.

Project Folder Structure.

	Plugins/PSVita - Contains the SystemSettings native plugin.
	Editor/SonyVitaSystemSettingsPublishData - Contains a param.sfc file for use if building a package.
	SonyAssemblies - Contains the SonyVitaSystemSettings managed interface to the SystemSettings plugin.
	SonyExample/SystemSettings - Contains a Unity scene which runs the scripts.
	SonyExample/SystemSettings/Scripts - Contains the example scripts.
	SonyExample/Utils - Contains various utility scripts for use by the example.

The SonyVitaSystemSettings managed assembly defines the following namespaces...

Sony.Vita.SystemSettings		Contains methods for accessing and changing system settings.

Sony.Vita.SystemSettings

	Methods.

        public static bool SetPowerLevel(uint level)
		Sets the power level. Pass one of the 3 PowerSetting contants listed below.

		public static uint GetPowerLevel()
		Retrieve the power level setting that was previously set with SetPowerLevel().
		
		public static bool BGMAcquire()
		Aquire the Background Music port, pauses Vita music player.

		public static bool BGMRelease()
		Release the background music port, resumes Vita music player.

		public static bool BGMIsAquired()
		Returns 'true' if the Background Music port port is currently aquired.

		Note that BGMIsAcquired() will continue to return 'true' even though BGMRelease has
		been called if the PSVita music application is not playing music. You can periodically
		call BGMIsAcquired to detect when the acquisition state has changed, e.g. when the
		PS Vita music applications starts playing music.

	Constants
		PowerSettingNormal - GPU Clock is normal
		PowerSettingHighNoWifi - GPU Clock is set to high and Wifi is disabled
		PowerSettingHigh - GPU Clock is set to high

