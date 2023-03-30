package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;


	public class Level2Day5 extends MovieClip {

		public function Level2Day5() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			if(e.currentTarget.name == "btnStart_l2_d5")
			{
				MovieClip(root).gotoAndStop(30,"lesson2");
			}
			else if(e.currentTarget.name == "btnPlay_l2_d5")
			{
				MovieClip(root).gotoAndStop(31,"lesson2");
			}
			else {
				trace("Button not found in this frame.");
			}
		}
		
		public function correctChoice(e:MouseEvent):void 
		{
			if(MovieClip(root).currentFrame == 31 && e.currentTarget.name == "btn_c2") 
			{
				MovieClip(root).gotoAndStop(32,"lesson2");
			}
			else if(MovieClip(root).currentFrame == 32 && e.currentTarget.name == "btn_c1")
			{
				MovieClip(root).gotoAndStop(33,"lesson2");
			}
			else if(MovieClip(root).currentFrame == 33 && e.currentTarget.name == "btn_c3")
			{
				MovieClip(root).gotoAndStop(1,"lesson2");
			}
			else 
			{
				trace("Clicked button wasn't found correctly.");
			}
		}
		
	}

}