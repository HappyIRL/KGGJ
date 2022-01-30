using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bathroom : InteractableItem
{
	public override void Interact()
	{
		roomChanger.GoBathroom(false);
	}
}
