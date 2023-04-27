package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.net.SharedObject;
	
	public class Cursor extends MovieClip{

		public function Cursor() {
			// constructor code
		}
		
		var so:SharedObject = SharedObject.getLocal("SharedObject");
		
		public var cursor0:Cursor0 = new Cursor0();
		public var cursor1:Cursor1 = new Cursor1();
		public var cursor2:Cursor2 = new Cursor2();
		public var cursor3:Cursor3 = new Cursor3();
		public var cursor4:Cursor4 = new Cursor4();
		public var cursor5:Cursor5 = new Cursor5();
		public var cursor6:Cursor6 = new Cursor6();
		public var cursorValue:int = 0;
		public var activeCursor:Array = new Array(cursor0,cursor1,cursor2,cursor3,cursor4,cursor5,cursor6);

		//cursor activate and add
		public function MoveCursor(e:Event):void
		{
			cursorValue = so.data.usedCursor;
			activeCursor[cursorValue].x = mouseX;
			activeCursor[cursorValue].y = mouseY+40;
		}
		
		public function showCursor(e:MouseEvent):void
		{
			cursorValue = so.data.usedCursor;
			MovieClip(root).addChild(activeCursor[cursorValue]);
			addEventListener(Event.ENTER_FRAME,MoveCursor);
		}
		public function hideCursor(e:MouseEvent):void
		{
			cursorValue = so.data.usedCursor;
			MovieClip(root).removeChild(activeCursor[cursorValue]);
			removeEventListener(Event.ENTER_FRAME,MoveCursor);
		}
	}
	
}
