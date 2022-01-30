using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class RoomChanger : MonoBehaviour
{
	[SerializeField] private GameObject Bathroom;
	[SerializeField] private GameObject GBathroom;
	[SerializeField] private GameObject Kitchen;
	[SerializeField] private GameObject GKitchen;
	[SerializeField] private GameObject LivingRoom;
	[SerializeField] private GameObject GLivingRoom;
	[SerializeField] private GameObject Bedroom;
	[SerializeField] private GameObject GBedroom;

	private List<GameObject> switchGO = new List<GameObject>();

	private static RoomChanger instance;

	public Room room = Room.LivingRoomPhysical;

	public static RoomChanger Instance => instance;

	private void Awake()
	{
		instance = this;
	}

	private void Start()
	{
		switchGO.Add(Bathroom);
		switchGO.Add(GBathroom);
		switchGO.Add(Kitchen);
		switchGO.Add(GKitchen);
		switchGO.Add(LivingRoom);
		switchGO.Add(GLivingRoom);
		switchGO.Add(Bedroom);
		switchGO.Add(GBedroom);
	}

	private void SwitchToRoom(Room room)
	{
		switch ((int)room)
		{
			case 0:
				break;
			case 1:
				break;
			case 2:
				break;
			case 3:
				break;
			case 4:
				break;
			case 5:
				break;
			case 6:
				break;
			case 7:
				break;
			case 8:
				break;
			case 9:
				break;
		}
	}

	private void Activate(GameObject go)
	{
		switchGO.Remove(go);

		foreach (GameObject g in switchGO)
		{
			g.SetActive(false);
		}

		switchGO.Add(go);

		go.SetActive(true);
	}
}
