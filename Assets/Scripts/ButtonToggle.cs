using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonToggle : MonoBehaviour
{
	[SerializeField] private GameObject world;
	[SerializeField] private GameObject ghostWorld;

	private bool ghostWorldActive = false;


	public void OnSwitchRealm()
	{
		if (ghostWorldActive)
		{
			ghostWorld.SetActive(true);
			world.SetActive(false);
		}
		else
		{
			ghostWorld.SetActive(false);
			world.SetActive(true);
		}

		ghostWorldActive = !ghostWorldActive;
	}
}
