using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class SonyVitaSystemSettings : MonoBehaviour, IScreen
{
	string powerLevel = "Normal";

	MenuStack menuStack;
	MenuLayout menuMain;

	void Start()
	{
		menuMain = new MenuLayout(this, 500, 34);
		menuStack = new MenuStack();
		menuStack.SetMenu(menuMain);
	}

	public void OnEnter() {}
	public void OnExit() { }

	public void Process(MenuStack stack)
	{
		MainMenu();
	}

	void MainMenu()
	{
		menuMain.Update();

		if (menuMain.AddItem("Power Level: " + powerLevel))
		{
			ChangePowerSetting();
		}

		if (menuMain.AddItem("BGM Acquire"))
		{
			// Acquire the Background Music audio port, other applications that are outputting to the BGM port are silenced.
			Sony.Vita.SystemSettings.BGMAcquire();
		}

		if (menuMain.AddItem("BGM Release"))
		{
			// Release the Background Music audio port, other applications that are outputting to the BGM port will resume playing.
			Sony.Vita.SystemSettings.BGMRelease();
		}

		if (menuMain.AddItem("BGM Is Acquired"))
		{
			// Get the current status of the BGM port, returns true if this application has acquired the BGM port.
			//
			// Note that true is also returned if there are no other applications using the BGM port even when this
			// application has not acquired it.
			bool isAcquired = Sony.Vita.SystemSettings.BGMIsAcquired();
			Debug.Log("BGM Is Acquired = " + isAcquired);
		}
	}

	void ChangePowerSetting()
	{
		switch(Sony.Vita.SystemSettings.GetPowerLevel())
		{
			case Sony.Vita.SystemSettings.PowerSettingNormal:
				// Switch to HighNoWifi
				powerLevel = "HighNoWifi";
				Sony.Vita.SystemSettings.SetPowerLevel(Sony.Vita.SystemSettings.PowerSettingHighNoWifi);
				break;
			case Sony.Vita.SystemSettings.PowerSettingHighNoWifi:
				// Switch to High
				powerLevel = "High";
				Sony.Vita.SystemSettings.SetPowerLevel(Sony.Vita.SystemSettings.PowerSettingHigh);
				break;
			case Sony.Vita.SystemSettings.PowerSettingHigh:
				// Switch to normal
				powerLevel = "Normal";
				Sony.Vita.SystemSettings.SetPowerLevel(Sony.Vita.SystemSettings.PowerSettingNormal);
				break;
		}
	}

	void OnGUI()
	{
		MenuLayout activeMenu = menuStack.GetMenu();
		activeMenu.GetOwner().Process(menuStack);
	}
	
	void Update ()
	{
	}

}
