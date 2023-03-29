package  {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class AllDaysButtons  extends MovieClip{

		public function AllDaysButtons() {
			// constructor code
		}
		public function clickButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "btn_l3_d1": MovieClip(root).gotoAndStop(2,"lesson3");
				break;
				case "btn_l3_d2": MovieClip(root).gotoAndStop(9,"lesson3");
				break;
				case "btn_l3_d3": MovieClip(root).gotoAndStop(21,"lesson3");
				break;
				case "l3_back": MovieClip(root).gotoAndStop(1,"lesson3");
				break;
			}
		}

	}
	
}
