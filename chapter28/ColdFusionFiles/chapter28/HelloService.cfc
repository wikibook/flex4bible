<cfcomponent name="HelloService" output="false"
  hint="A ColdFusion Component for use in Flash Remoting">
  <cffunction name="helloWorld" returntype="string" access="remote">
    <cfreturn "Hello from a ColdFusion Component!"/>
  </cffunction>
</cfcomponent>
