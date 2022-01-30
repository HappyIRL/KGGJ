using System.Collections;
using System.Collections.Generic;
using Ink;
using UnityEngine;
using Ink.Runtime;
using TMPro;
using UnityEngine.UI;

public class InkScript : MonoBehaviour
{
    [SerializeField] private TextAsset inkAsset;
    [SerializeField] private Button button;
    [SerializeField] private TMP_Text textObject;
    [SerializeField] private Transform choiceContentObject;
    [SerializeField] private Button choicePrefab;

    private List<Button> subscribedButtons = new List<Button>();

    private Story inkStory;

    private void Awake()
    {
	    inkStory = new Story(inkAsset.text);
	    ContinueStory();
    }

    private void Start()
    {

    }

    private void OnEnable()
    {
	    button.onClick.AddListener(ContinueStory);
        subscribedButtons.Add(button);
    }

    private void OnDisable()
    {
	    for (int i = 0; i < subscribedButtons.Count; i++)
	    {
            if(subscribedButtons[i] != null)
				subscribedButtons[i].onClick.RemoveAllListeners();
	    }
    }

	private void ContinueStory()
    {
	    if (inkStory.canContinue)
	    {
		    inkStory.Continue();
		    DisplayStoryText(inkStory.currentText);
	    }
	    else
	    {
		    CheckForChoices();
	    }
    }

    private void CheckForChoices()
    {
	    if (inkStory.currentChoices.Count > 0)
	    {
		    button.gameObject.SetActive(false);

		    for (int i = 0; i < inkStory.currentChoices.Count; ++i)
		    {
			    Choice choice = inkStory.currentChoices[i];
			    CreateChoiceObject(choice);
		    }
	    }
    }

    private void CreateChoiceObject(Choice choice)
    {
	   Button choiceObject = Instantiate(choicePrefab, choiceContentObject);
	   TMP_Text textObj = choiceObject.GetComponentInChildren<TMP_Text>();
	   textObj.text = choice.text;

	   choiceObject.onClick.AddListener(() => OnChoiceSelect(choice));
	   subscribedButtons.Add(choiceObject);
    }

    private void OnChoiceSelect(Choice choice)
    {
	    inkStory.ChooseChoiceIndex(choice.index);


        ContinueStory();
        button.gameObject.SetActive(true);


        foreach (Transform children in choiceContentObject)
        {
	        Destroy(children.gameObject);
        }
    }

    private void DisplayStoryText(string t)
    {
	    textObject.text = t;
    }
}
