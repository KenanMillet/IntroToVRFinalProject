using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstProceduralSpawnScript : ProceduralSpawnScript {
    public float healthMod = 0.75f;
    public float baseTime = 20f;
    public float baseMin = 10f;
    public override float CooldownTime(float waveNo, float healthPool)
    {
        //return the larger of a value based on a base time and the current wave, and a value based on the total health of the enemies in the wave
        return Mathf.Max(Mathf.Max(baseMin, baseTime - waveNo), healthMod * healthPool);
    }
    public override GameObject[] Wave(int waveNo)
    {
        //proceduralVal is calculated as a value added to a variable dependent on the current wave
        //and represents the total health pool alotted to a given wave
        int proceduralVal = 14 + Random.Range((waveNo - 3) * 2, (waveNo - 3) * 4);
        int enemiesToSpawn = waveNo > 3 ? proceduralVal : 1 + (waveNo * 2);
        GameObject[] wave = null;

        bool procGen = waveNo > 3 ? true : false;

        //for first 3 waves, generate a wave of 3, 5, 7 enemies, respectively
        if (!procGen)
        {
            wave = new GameObject[enemiesToSpawn];
            for (int i = 0; i < wave.Length; i++)
            {
                int enemyIndex = Random.Range(0, enemyTypes.Length);

                wave[i] = enemyTypes[enemyIndex];
            }
        }
        //if wave 4 or higher, generate a wave of variable size, dependent on the total health pool of the wave (which is itself variable)
        else
        {
            //the most possible units in a wave is equal to the value of proceduralVal - in the case where every enemy is a 1 health fast unit
            wave = new GameObject[proceduralVal];

            //keeps adding objects to the array and subtracting the required health from the pool until proceduralVal is <= 0
            for (int i = 0;  proceduralVal > 0; i ++)
            {

                int enemyIndex = Random.Range(0, enemyTypes.Length);
                switch (enemyIndex)
                {
                    case 0:
                        proceduralVal -= 1;
                        break;
                    case 1:
                        proceduralVal -= 2;
                        break;
                    case 2:
                        proceduralVal -= 4;
                        break;
                    default:
                        proceduralVal -= 0;
                        break;
  
                }
                wave[i] = enemyTypes[enemyIndex];

            }
            
        }
        
        return wave;
    }
}
