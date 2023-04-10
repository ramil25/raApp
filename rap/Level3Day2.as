package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	
	public class Level3Day2 extends MovieClip{

		public function Level3Day2() {
			// constructor code
		}
		
		public var robot1Sound:Sound = new L3D2Robot1Sound();
		public var robot2Sound:Sound = new L3D2Robot2Sound();
		public function nextFramed(e:MouseEvent):void
		{
			e.currentTarget.removeEventListener(MouseEvent.CLICK, this.nextFramed);
			MovieClip(root).nextFrame();
		}

	}
	
}
