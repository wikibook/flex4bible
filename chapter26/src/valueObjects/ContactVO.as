package valueObjects
{
  [Bindable]
  [RemoteClass(alias="flex4bible.Contact")]
  public class ContactVO
  {
    public var contactId:int;
    public var firstName:String;
    public var lastName:String;
    public function ContactVO()
    {
    }
  }
}