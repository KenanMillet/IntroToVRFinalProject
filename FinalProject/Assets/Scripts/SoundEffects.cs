using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundEffects : MonoBehaviour {
	
	AudioSource audio;

	void Awake(){
		audio = GetComponent<AudioSource>();
	}

	public void playSound(){
		audio.Play ();
	}

	public AudioClip loseLife;
	public AudioClip scoreMultiplier;

	public void playLoseLife(){
		audio.PlayOneShot (loseLife);
	}

	public void playScoreMult(){
		audio.PlayOneShot (scoreMultiplier);
	}
		
}
