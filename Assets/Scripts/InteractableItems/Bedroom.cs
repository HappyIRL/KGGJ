using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bedroom : InteractableItem
{
	public override void Interact()
	{
		roomChanger.GoBedroom(false);
	}
}
