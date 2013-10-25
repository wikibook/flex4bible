/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Person.as.
 */

package valueObjects
{
import flash.events.EventDispatcher;
import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.IValueObject;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.services.IFiberManagingService;
import mx.binding.utils.ChangeWatcher;
import mx.rpc.AbstractService;


import flash.events.Event;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;


use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_Person extends EventDispatcher implements IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void 
    {
     }   
     
    model_internal static function initRemoteClassAliasAllRelated() : void 
    {     
    }

	model_internal var _dminternal_model : _PersonEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_personid : int;
	private var _internal_firstname : String;
	private var _internal_lastname : String;
	private var _internal_streetaddress : String;
	private var _internal_city : String;
	private var _internal_state : String;
	private var _internal_email : String;
	private var _internal_phone : String;

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_Person() 
	{	
		_model = new _PersonEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get personid() : int    
    {
            return _internal_personid;
    }    
	[Bindable(event="propertyChange")] 
    public function get firstname() : String    
    {
            return _internal_firstname;
    }    
	[Bindable(event="propertyChange")] 
    public function get lastname() : String    
    {
            return _internal_lastname;
    }    
	[Bindable(event="propertyChange")] 
    public function get streetaddress() : String    
    {
            return _internal_streetaddress;
    }    
	[Bindable(event="propertyChange")] 
    public function get city() : String    
    {
            return _internal_city;
    }    
	[Bindable(event="propertyChange")] 
    public function get state() : String    
    {
            return _internal_state;
    }    
	[Bindable(event="propertyChange")] 
    public function get email() : String    
    {
            return _internal_email;
    }    
	[Bindable(event="propertyChange")] 
    public function get phone() : String    
    {
            return _internal_phone;
    }    

    /**
     * data property setters
     */      
    public function set personid(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_personid;               
        if (oldValue !== value)
        {
        	_internal_personid = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set firstname(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_firstname == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_firstname;               
        if (oldValue !== value)
        {
        	_internal_firstname = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set lastname(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_lastname == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_lastname;               
        if (oldValue !== value)
        {
        	_internal_lastname = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set streetaddress(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_streetaddress == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_streetaddress;               
        if (oldValue !== value)
        {
        	_internal_streetaddress = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set city(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_city == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_city;               
        if (oldValue !== value)
        {
        	_internal_city = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set state(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_state == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_state;               
        if (oldValue !== value)
        {
        	_internal_state = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set email(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_email == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_email;               
        if (oldValue !== value)
        {
        	_internal_email = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set phone(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_phone == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_phone;               
        if (oldValue !== value)
        {
        	_internal_phone = value;
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isFirstnameAvailable && _internal_firstname == null)
		{
			violatedConsts.push("firstnameIsRequired");
			validationFailureMessages.push("firstname is required");
		}
		if (_model.isLastnameAvailable && _internal_lastname == null)
		{
			violatedConsts.push("lastnameIsRequired");
			validationFailureMessages.push("lastname is required");
		}
		if (_model.isStreetaddressAvailable && _internal_streetaddress == null)
		{
			violatedConsts.push("streetaddressIsRequired");
			validationFailureMessages.push("streetaddress is required");
		}
		if (_model.isCityAvailable && _internal_city == null)
		{
			violatedConsts.push("cityIsRequired");
			validationFailureMessages.push("city is required");
		}
		if (_model.isStateAvailable && _internal_state == null)
		{
			violatedConsts.push("stateIsRequired");
			validationFailureMessages.push("state is required");
		}
		if (_model.isEmailAvailable && _internal_email == null)
		{
			violatedConsts.push("emailIsRequired");
			validationFailureMessages.push("email is required");
		}
		if (_model.isPhoneAvailable && _internal_phone == null)
		{
			violatedConsts.push("phoneIsRequired");
			validationFailureMessages.push("phone is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _PersonEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _PersonEntityMetadata) : void       
    {
    	var oldValue : _PersonEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:IFiberManagingService;
    
     public function set managingService(managingService:IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
