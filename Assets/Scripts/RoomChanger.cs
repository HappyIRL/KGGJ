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
	[SerializeField] private GameObject Introduction;
	[SerializeField] private GameObject End;

	private Dictionary<Room, GameObject> switchGO = new Dictionary<Room, GameObject>();

	private static RoomChanger instance;

	public Room room = Room.LivingRoomPhysical;

	public static RoomChanger Instance => instance;

	private void Awake()
	{
		instance = this;
	}

	private void Start()
	{
		switchGO.Add(Room.BathroomPhysical,Bathroom);
		switchGO.Add(Room.BathroomSpirit, GBathroom);
		switchGO.Add(Room.KitchenPhysical, Kitchen);
		switchGO.Add(Room.KitchenSpirit, GKitchen);
		switchGO.Add(Room.LivingRoomPhysical, LivingRoom);
		switchGO.Add(Room.LivingRoomSpirit, GLivingRoom);
		switchGO.Add(Room.BedroomPhysical, Bedroom);
		switchGO.Add(Room.BedroomSpirit, GBedroom);
		switchGO.Add(Room.BlackscreenIntroduction, Introduction);
		switchGO.Add(Room.BlackscreenEnding, End);
	}

	public void SwitchToRoom(Room room)
	{
		Activate(room);
	}

	private void Activate(Room room)
	{
		GameObject go = switchGO[room];
		switchGO.Remove(room);

		foreach (var item in switchGO)
		{
			item.Value.SetActive(false);
		}

		switchGO.Add(room, go);

		go.SetActive(true);
	}
}
