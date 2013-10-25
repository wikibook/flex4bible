/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - ContactService.as.
 */
package services.contactservice
{
import mx.rpc.AsyncToken;
import com.adobe.fiber.core.model_internal;
import mx.rpc.AbstractOperation;
import valueObjects.Contact;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_ContactService extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_ContactService()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "getContactsAsArray");
		 operation.resultElementType = valueObjects.Contact;
        operations["getContactsAsArray"] = operation;
         
     valueObjects.Contact._initRemoteClassAlias();
        operation = new Operation(null, "getAllContacts");
		 operation.resultType = Object; 		 
        operations["getAllContacts"] = operation;
         
        operation = new Operation(null, "getFilteredContacts");
		 operation.resultElementType = valueObjects.Contact;
        operations["getFilteredContacts"] = operation;
         
     valueObjects.Contact._initRemoteClassAlias();
        operation = new Operation(null, "parseContact");
		 operation.resultType = String; 		 
        operations["parseContact"] = operation;
         
        operation = new Operation(null, "getContactCount");
		 operation.resultType = Number; 		 
        operations["getContactCount"] = operation;
         
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
    	_serviceControl.convertParametersHandler = TypeUtility.convertCFAMFParametersHandler;
        _serviceControl.source = "flex4bible.chapter28.ContactService";
		_serviceControl.destination = "ColdFusion";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getContactsAsArray' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getContactsAsArray() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getContactsAsArray");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getAllContacts' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAllContacts() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAllContacts");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getFilteredContacts' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getFilteredContacts(firstname:String, lastname:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getFilteredContacts");
		var _internal_token:AsyncToken = _internal_operation.send(firstname,lastname) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'parseContact' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function parseContact(contactVO:valueObjects.Contact) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("parseContact");
		var _internal_token:AsyncToken = _internal_operation.send(contactVO) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getContactCount' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getContactCount() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getContactCount");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   
	 
}

}
