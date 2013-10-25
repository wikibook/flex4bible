<cfcomponent name="ContactService" hint="Delivers Contact data from an XML file to a Flex application">
  
  <cfapplication name="flex4biblechapter28" sessionmanagement="true">
  
  <!--- Initialize data set in memory if it doesn't already exist --->
  <cfif not structKeyExists(session, "qContacts")>
    <cfset createDataSet()>
  </cfif>

  <!--- Creates a query object from an XML file --->
  <cffunction name="createDataSet" returntype="void" access="private">
    <cfset var strContacts="">
    <cfset var xContacts="">
    <cfset var i="">
    <cfset var qContacts=queryNew('contactId,firstname,lastname,city')>
        
    <cffile action="read" file="#expandPath('data/contacts.xml')#" variable="strContacts">
    <cfset xContacts=xmlParse(strContacts)>
    
    <cfloop from="1" to="#arrayLen(xContacts.contacts.row)#" index="i">
      <cfset QueryAddRow(qContacts)>
      <cfset qContacts.firstname[i]=xContacts.contacts.row[i].firstname.xmltext>
      <cfset qContacts.lastname[i]=xContacts.contacts.row[i].lastname.xmltext>
      <cfset qContacts.contactId[i]=xContacts.contacts.row[i].contactId.xmltext>
      <cfset qContacts.city[i]=xContacts.contacts.row[i].city.xmltext>
    </cfloop>
    <cfset session.qContacts=qContacts>
  </cffunction>
  
  <!--- Returns all data as a query object --->
  <cffunction name="getAllContacts" returntype="query" access="remote">
    <cfreturn session.qContacts>
  </cffunction>
  
  <!--- Returns all data as an array of value objects --->
  <cffunction name="getContactsAsArray" returntype="flex4bible.chapter28.Contact[]"
  	access="remote">
  	<cfreturn queryToArray(session.qContacts)>
  </cffunction>

  <!--- Returns filtered data as array --->
  <cffunction name="getFilteredContacts" returnType="Contact[]" access="remote">
    <cfargument name="firstname" type="string" required="true">
    <cfargument name="lastname" type="string" required="true">
    
    <cfset var qFiltered="">
    <cfquery dbtype="query" name="qFiltered">
      SELECT * FROM session.qContacts
      WHERE 0=0
      <cfif len(trim(firstname))>
        AND firstname LIKE '%#trim(arguments.firstname)#%'
      </cfif>
      <cfif len(trim(lastname))>
        AND lastname LIKE '%#trim(arguments.lastname)#%'
      </cfif>
    </cfquery>
    
    <cfreturn queryToArray(qFiltered)>
  
  </cffunction>

  <!--- Returns the total count of Contacts --->
  <cffunction name="getContactCount" returntype="numeric" access="remote">
    <cfreturn session.qContacts.recordCount>
  </cffunction>

    <!--- Returns all data from a query object --->
  <cffunction name="queryToArray" access="private"
    returntype="flex4bible.chapter28.Contact[]">
	<cfargument name="qData" type="query" required="true">
    <cfset var contact="">
    <cfset var arReturn=arrayNew(1)>
    
    <cfloop query="qData">
      <cfset contact=createObject("component", "flex4bible.chapter28.Contact")>
      <cfset contact.contactId = qData.contactId>
      <cfset contact.firstname = qData.firstname>
      <cfset contact.lastname = qData.lastname>
      <cfset contact.city = qData.city>
      <cfset arrayAppend(arReturn, contact)>
    </cfloop>
    <cfreturn arReturn>
  </cffunction>

  <!--- Receives a value object and returns a string --->
  <cffunction name="parseContact" access="remote" returntype="String">
    <cfargument name="contactVO" type="Contact" required="true">
    <cfreturn "Contact received: " & contactVO.firstname & " " & contactVO.lastname>
  </cffunction>

</cfcomponent>