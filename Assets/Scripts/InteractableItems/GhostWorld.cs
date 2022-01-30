using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class GhostWorld : InteractableItem
{
	public override void Interact()
	{
		switch (roomChanger.room)
		{
			case Room.LivingRoom:
				roomChanger.GoLivingRoom(true);
				break;
			case Room.Kitchen:
				roomChanger.GoKitchen(true);
				break;
			case Room.Bathroom:
				roomChanger.GoBathroom(true);
				break;
			case Room.Bedroom:
				roomChanger.GoBedroom(true);
				break;
		}

	}
}
