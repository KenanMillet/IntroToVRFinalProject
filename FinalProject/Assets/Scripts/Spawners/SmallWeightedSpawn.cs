using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmallWeightedSpawn : ProceduralSpawnScript {
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
        int proceduralVal = 20 + Random.Range((waveNo - 3), (waveNo - 3) * 3);
        int enemiesToSpawn = waveNo > 3 ? proceduralVal : 1 + (waveNo * 2);
        List<GameObject> wave = null;

        bool procGen = waveNo > 3 ? true : false;

        //for first 3 waves, generate a wave of 3, 5, 7 enemies, respectively
        if (!procGen)
        {
            wave = new List<GameObject>();
            for (int i = 0; i < enemiesToSpawn; i++)
            {
                int enemyIndex = Random.Range(0, enemyTypes.Length);

                wave.Add(enemyTypes[enemyIndex]);
            }
        }
        //if wave 4 or higher, generate a wave of variable size, dependent on the total health pool of the wave (which is itself variable)
        else
        {
            //the most possible units in a wave is equal to the value of proceduralVal - in the case where every enemy is a 1 health fast unit
            wave = new List<GameObject>();

            //keeps adding objects to the array and subtracting the required health from the pool until proceduralVal is <= 0
            while (proceduralVal > 0)
            {

                //assigns enemyIndex with a preference for small enemy types - wave will be weighted to have 50-100% small enemies
                float preference = Random.Range(.5f, 1f);
                float prefForOthers = (1 - preference) / 3;
                float enemySelector = Random.Range(0f, 1f);
                int enemyIndex;
                if (enemySelector >= 0 && enemySelector <= preference)
                {
                    enemyIndex = 0;
                }
                else if (enemySelector > preference && enemySelector <= (preference + prefForOthers))
                {
                    enemyIndex = 1;
                }
                else if (enemySelector > (preference + prefForOthers) && enemySelector <= (preference + (2 * prefForOthers)))
                {
                    enemyIndex = 2;
                }
                else if (enemySelector > (preference + (2 * prefForOthers)) && enemySelector <= (preference + (3 * prefForOthers)))
                {
                    enemyIndex = 3;
                }
                else enemyIndex = 0;

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
                    case 3:
                        proceduralVal -= 4;
                        break;
                    default:
                        proceduralVal -= 0;
                        break;

                }
                wave.Add(enemyTypes[enemyIndex]);

            }

        }

        return wave.ToArray();
    }

}
