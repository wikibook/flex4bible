<cfcomponent output="false" alias="flex4bible.chapter28.Contact">
  <cfproperty name="contactId" type="numeric" default="0">
  <cfproperty name="firstname" type="string" default="">
  <cfproperty name="lastname" type="string" default="">
  <cfproperty name="city" type="string" default="">
  <cfscript>
    this.contactId = 0;
    this.firstname = "";
    this.lastname = "";
    this.city = "";
  </cfscript>
</cfcomponent>