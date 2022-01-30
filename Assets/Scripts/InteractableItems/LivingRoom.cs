using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LivingRoom : InteractableItem
{
	public override void Interact()
	{
		roomChanger.GoLivingRoom(false);
	}
}
