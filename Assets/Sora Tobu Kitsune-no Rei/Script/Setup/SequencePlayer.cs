/*
To use this script, if your project doesn't already have a Resources folder, create one inside the root Assets folder in Unity. Then, make a folder in there to hold your image sequence.
Number your images Image000, Image001, etc. IT IS CRUCIAL TO START WITH 000- if you don't, you will have a single blank frame when the animation loops
Put the script on the object you want to play back the sequence.
Set the options according to the comments below to point Unity at your image sequence.
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class SequencePlayer : MonoBehaviour {

     //A texture object that will output the animation  
    private Texture texture;  
    //With this Material object, a reference to the game object Material can be stored  
  	public RawImage rawImage;  
    //An integer to advance frames  
    private int frameCounter = 0;  
  
    //A string that holds the name of the folder which contains the image sequence  
    public string folderName;  
    //The name of the image sequence  
    public string imageSequenceName;  
    //The number of frames the animation has  
    public int numberOfFrames;  
	//Toggle animation looping
	public bool loop = true;
    //The base name of the files of the sequence  
	public float frameDelay = 0.05f;
   private string baseName;  
   private float lastCallTime;
  
    void Awake()  
    {  
        //Get a reference to the Material of the game object this script is attached to  
        this.rawImage = this.GetComponent<RawImage>();
        //With the folder name and the sequence name, get the full path of the images (without the numbers)  
        this.baseName = this.folderName + "/" + this.imageSequenceName;  
    }  
  
    void Start ()  
    {  
        //set the initial frame as the first texture. Load it from the first image on the folder  
        texture = (Texture)Resources.Load(baseName + "000", typeof(Texture));  
    }  
  
    void Update ()  
    {  
     
            if (loop == true){
                //Start the 'PlayLoop' method as a coroutine  
                StartCoroutine("PlayLoop", frameDelay);  
            }
            else if (loop == false){
                //Start the 'Play' method as a coroutine
                StartCoroutine("Play", frameDelay);
            }
            //Set the material's texture to the current value of the frameCounter variable  
            rawImage.texture = this.texture;  
        
    }  
  
    //The following methods return a IEnumerator so they can be yielded:  
    //A method to play the animation in a loop  
    IEnumerator PlayLoop(float delay)  
    {  
        //wait for the time defined at the delay parameter  
        yield return new WaitForSeconds(delay);    
  
        //advance one frame  
        frameCounter = (++frameCounter)%numberOfFrames;  
  
        //load the current frame  
        this.texture = (Texture)Resources.Load(baseName + frameCounter.ToString("D3"), typeof(Texture));  
  
        //Stop this coroutine  
        StopCoroutine("PlayLoop");  
    }  
  
    //A method to play the animation just once  
    IEnumerator Play(float delay)  
    {  
        //wait for the time defined at the delay parameter  
        yield return new WaitForSeconds(delay);    
  
        //if it isn't the last frame  
        if(frameCounter < numberOfFrames)  
        {  
            //Advance one frame  
            ++frameCounter;  
  
            //load the current frame  
            this.texture = (Texture)Resources.Load(baseName + frameCounter.ToString("D3"), typeof(Texture));  
        }  
  
        //Stop this coroutine  
        StopCoroutine("Play");  
    }  

}