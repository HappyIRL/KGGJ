using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Kitchen : InteractableItem
{
	public override void Interact()
	{
		roomChanger.GoKitchen(false);
	}
}
