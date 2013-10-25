<cfscript>
	service = new flex4bible.chapter28.ContactService();
	data = service.getAllContacts();
	writeDump(data);
	data = service.getContactsAsArray();
	writeDump(data);
</cfscript>