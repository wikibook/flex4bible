package flex4bible;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ROService {

	public ROService()
	{
	}

	public String helloWorld()
	{
		return "Hello from the world of Java";
	}

	public List getArray()
	{
		Map stateObj;
		List ar = new ArrayList();
		stateObj = new HashMap();
		stateObj.put("capital", "Sacramento");
		stateObj.put("name", "California");
		ar.add(stateObj);
		stateObj = new HashMap();
		stateObj.put("capital", "Olympia");
		stateObj.put("name", "Washington");
		ar.add(stateObj);
		stateObj = new HashMap();
		stateObj.put("capital", "Salem");
		stateObj.put("name", "Oregon");
		ar.add(stateObj);
		return ar;
	}
	public String concatValues(String val1, String val2)
	{
		return "You passed values " + val1 +
			" and " + val2;
	}
	public String setContact(Contact myContact)
	{
		return "Contact sent from server: " + myContact.getFirstName() + " " +
			myContact.getLastName();
	}
	public Contact getContact(String val1, String val2)
	{
		Contact myContact = new Contact();
		myContact.setFirstName(val1);
		myContact.setLastName(val2);
		return myContact;
	}
}
