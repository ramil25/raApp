package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;

	public class l1Day4 extends MovieClip {

		public function l1Day4() {
			// constructor code
		}
		
		public var page1Sound:Sound = new Paragraph1();
		public var page2Sound:Sound = new Paragraph2();
		public var page3Sound:Sound = new Paragraph3();
		public function playl1day4(e:MouseEvent):void
		{
			switch(e.currentTarget.name){
				case "l1Next1": MovieClip(root).gotoAndStop(25,"lesson1");
				page1Sound.play();
				break;
				case "l1Next2": MovieClip(root).gotoAndStop(26,"lesson1");
				page2Sound.play();
				break;
				case "l1Next3": MovieClip(root).gotoAndStop(27,"lesson1");
				page3Sound.play();
				break;
				case "l1Next4": MovieClip(root).gotoAndStop(35,"lesson1");
				break;
			}
		}
	}
	
}
