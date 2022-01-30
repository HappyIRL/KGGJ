using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InteractableItem : MonoBehaviour
{
	protected RoomChanger roomChanger;

	private void OnEnable()
	{
		Button b = GetComponent<Button>();
		b.onClick.AddListener(Interact);
	}

	private void OnDisable()
	{
		Button b = GetComponent<Button>();
		b.onClick.RemoveAllListeners();
	}

	private void Start()
	{
		roomChanger = RoomChanger.Instance;
	}

	public virtual void Interact()
	{

	}
}
