package valueObjects
{
  [Bindable]
  [RemoteClass(alias="flex4bible.chapter28.Contact")]
  public class ContactVO
  {
    public var contactId:int;
    public var firstname:String;
    public var lastname:String;
    public var city:String;
    public function ContactVO()
    {
    }
  }
}
