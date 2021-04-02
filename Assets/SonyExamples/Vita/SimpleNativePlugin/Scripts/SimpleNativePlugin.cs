using System;
using System.Runtime.InteropServices;
using System.Text;
using System.IO;
using UnityEngine;
using System.Collections;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Threading;

class SimpleNativePlugin : MonoBehaviour
{
	private const int defaultBusFreq = 111;
	private const int defaultCPUFreq = 333;
	private const int defaultGPUFreq = 111;
	private const int defaultXbarFreq = 111;

	private const string cpuSavePath = "ux0:/data/cpu";
	private const string gpuSavePath = "ux0:/data/gpu";
	private const string busSavePath = "ux0:/data/bus";
	private const string xbarSavePath = "ux0:/data/xbar";

	static private int pluginUID = -1;
	
	//My own function I impemented, Returns the loaded plugins uid (Process ID) on success otherwise returns error code which is < 0
	[DllImport("UnityOC")]
	public static extern int loadStartModuleFromPath(string Path);

	//Stops and Unloads an already loaded module from it's uid. returns 0 on success < 0 on error
	[DllImport("UnityOC")]
	public static extern int StopUnloadModuleFromUID(int UID);

	//Starts an already loaded module
	[DllImport("UnityOC")]
	public static extern int StartModule(int UID);

	//Stops an already started module
	[DllImport("UnityOC")]
	public static extern int StopModule(int UID);

	private string infoText;
	private int infoCount = 0;

	void OnGUI()
	{
		GUI.TextArea(new Rect(0,0,Screen.width-1,Screen.height-64), infoText);
		GUI.TextArea(new Rect(0,Screen.height-32,Screen.width,31), infoCount.ToString());
	}

	public static void SetFrequencies(int cpuFreq, int gpuFreq, int busFreq, int xbarFreq)
	{
		WriteIntRaw(cpuFreq, cpuSavePath);
		WriteIntRaw(gpuFreq, gpuSavePath);
		WriteIntRaw(busFreq, busSavePath);
		WriteIntRaw(xbarFreq, xbarSavePath);

        if (pluginUID == -1)
        {
			pluginUID = loadStartModuleFromPath("app0:Media/Plugins/oclockvita.suprx");
        }
		else
        {
			StopUnloadModuleFromUID(pluginUID);
			pluginUID = loadStartModuleFromPath("app0:Media/Plugins/oclockvita.suprx");
        }
    }

	public static void ResetFrequencies()
    {
		SetFrequencies(defaultCPUFreq, defaultGPUFreq, defaultBusFreq, defaultXbarFreq);
    }

	static private void WriteIntRaw(int num, string path)
    {
		if (File.Exists(path))
			File.Delete(path);

		using (FileStream file = File.Open(path, FileMode.OpenOrCreate, FileAccess.Write))
		{
			using (BinaryWriter bw = new BinaryWriter(file))
			{
				bw.Write(num);
				bw.Flush();
			}
			file.Close();
		}
	}

	// void Update()
	// {
	// 	infoCount ++;
	// 	if(Input.GetKeyDown(KeyCode.JoystickButton0))
    //     {
	// 		SetFrequencies(444, 222, 222, 166);
    //     }
    //     if (Input.GetKeyDown(KeyCode.JoystickButton2))
    //     {
	// 		ResetFrequencies();
    //     }
	// }

	// void Start()
    // {
	// 	Println("Press X to overclock, Press O to revert");
    // }

	void Println(string text)
    {
		infoText += text;
		infoText += "\n";
    }
}
