using System.Collections;
using System.Collections.Generic;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using UnityEngine;
using UnityEngine.UI;



[System.Serializable]
/*This script serializes a binary file for saving data. For Vita use, dataPath should be formatted as ux0:/data/someDirectoryName/ in the Inspector.
You should also define savePrefix in some fashion, otherwise youre saves will just be based on the number of the slot you've selected*/
public class SaveSerial : MonoBehaviour {
    
	public GameObject eventManager;
	public GameObject mainEventManager;
	public string dataPath;
	public string savePrefix;
	public string saveFileName;
	public bool hasLoaded;
	public int slotSelector;
// Set up the data we are saving to the file
	public string levelToSave;

void Start() {
	SetScenes.sceneToLoad = "LoadScreen";
	levelToSave = mainEventManager.GetComponent<SceneLoadTrigger>().currentScene;

//ignore this if we are in the editor
if(!Application.isEditor){
	//create directory on the Vita for our save files if it doesn't exist
		if(!Directory.Exists(dataPath)){
			Directory.CreateDirectory(dataPath);
		}
	}
}

 void Update() {
	 if (SetScenes.currentScene == "Title"){
		slotSelector = eventManager.GetComponent<TitleSaveManagerInputs>().selectedSlot;
	}
	if (SetScenes.currentScene != "Title"){
		slotSelector = eventManager.GetComponent<SaveManager_Inputs>().selectedSlot;
	} 	
	 //set save file name based on the slot selected so we know which file we are loading/saving
	saveFileName = (savePrefix + slotSelector + ".sav");
	
	
}
	
//this is the class we are using to store our data we want to save
[System.Serializable]
public class SaveData
	{
		public string savedLevel;
	}
//create a binary file, copy our data from the game to a SaveData instance
public void Save()
	{
		BinaryFormatter bf = new BinaryFormatter(); 
		FileStream file = File.Create(dataPath + saveFileName); 
		SaveData data = new SaveData();
		data.savedLevel = levelToSave;
		bf.Serialize(file, data);
		Debug.Log(data.savedLevel);
		file.Close();	
	}
//checks if the file exists, if so load the data from it and copy it back to our game
public void Load()
	{
		if (File.Exists(dataPath + saveFileName))
		{
			BinaryFormatter bf = new BinaryFormatter();
			FileStream file =  File.Open(dataPath + saveFileName, FileMode.Open);
			SaveData data = (SaveData)bf.Deserialize(file);
			file.Close();
			levelToSave = data.savedLevel;
			Debug.Log (levelToSave);
			hasLoaded = true;
			SetScenes.nextScene = levelToSave;
		}
		else Debug.Log("No Save File Exists to Load!");
	}
//checks if the file exists, if it does, delete the file and reset our game variables
public void Reset()
	{

		if (File.Exists(dataPath + saveFileName))
		{
			File.Delete(dataPath + saveFileName);
			levelToSave = "";
		}
		else Debug.Log("No Save File Exists to Load!");
	}

}