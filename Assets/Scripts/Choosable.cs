using System.Collections;
using System.Collections.Generic;
using Ink.Runtime;
using UnityEngine;

public class Choosable : MonoBehaviour
{
	private Choice choice;

	public void SetChoiceInstance(Choice choice)
	{
		this.choice = choice;
	}
}
