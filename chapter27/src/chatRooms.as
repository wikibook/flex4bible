// ActionScript file
import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.messaging.Consumer;
import mx.messaging.Producer;
import mx.messaging.events.MessageEvent;
import mx.messaging.events.MessageFaultEvent;
import mx.messaging.messages.AsyncMessage;
[Bindable]
private var user:String;
[Bindable]
private var currentRoom:String;
[Bindable]
private var acRooms:ArrayCollection = 
  new ArrayCollection(["Room 1", "Room 2"]);
private var myConsumer:Consumer = new Consumer();
private var myProducer:Producer = new Producer();
private function initApp():void
{
  myProducer.destination = "chatrooms";
  myProducer.addEventListener(MessageFaultEvent.FAULT, faultHandler);
  myConsumer.destination = "chatrooms";
  myConsumer.addEventListener(MessageEvent.MESSAGE, messageHandler);
  myConsumer.addEventListener(MessageFaultEvent.FAULT, faultHandler);
}
private function send():void
{
  var message:AsyncMessage = new AsyncMessage();
  message.body = msgInput.text;
  message.headers.user = user;
  myProducer.send(message);
  msgInput.text="";
  msgInput.setFocus();
}
private function messageHandler(event:MessageEvent):void
{
  msgLog.text += event.message.headers.user + ": " + 
    event.message.body + "\n";
}
private function login():void
{
  user = userInput.text;
  myConsumer.subscribe();
  currentState = "loggedIn";
}
private function logout():void 
{
  myConsumer.unsubscribe();
  msgLog.text="";
  currentState = "";
  currentRoom="";
  roomList.selectedIndex=-1;
}
private function changeChatRoom():void
{
  currentRoom = roomList.selectedItem as String;
  myProducer.subtopic = currentRoom;
  myConsumer.subtopic = currentRoom;
}
private function faultHandler(event:MessageFaultEvent):void
{
  Alert.show(event.faultString, event.faultCode);
}
