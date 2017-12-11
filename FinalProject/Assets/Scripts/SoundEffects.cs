using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundEffects : MonoBehaviour {
	
	AudioSource audio;

	public AudioClip loseLife;
	public AudioClip scoreMultiplier;
	public AudioClip death;
	public AudioClip teleport;

	void Awake(){
		audio = GetComponent<AudioSource>();

		DontDestroyOnLoad(this);
	}




	public void playLoseLife( ){
		Debug.Log ("Lost Life");
		audio.PlayOneShot (loseLife);
	}

	public void playScoreMult( ){
		audio.PlayOneShot (scoreMultiplier);
	}

	public void playEnemyDeath( ){
		audio.PlayOneShot (death);
	}

	public void playTeleport( ){
		Debug.Log ("teleport");
		audio.PlayOneShot (teleport);
	}
		
}
