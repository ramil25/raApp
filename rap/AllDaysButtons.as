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
				case "btn_l3_d4": MovieClip(root).gotoAndStop(27,"lesson3");
				break;
				case "btn_l3_d5": MovieClip(root).gotoAndStop(36,"lesson3");
				break;
				case "l3_back": MovieClip(root).gotoAndStop(1,"lesson3");
				break;
				case "btnStart_l3_d5": MovieClip(root).gotoAndStop(37,"lesson3");
				break;
				case "btn_l3_d5": MovieClip(root).gotoAndStop(36,"lesson3");
				break;
				
				// lesson 4
				
				case "btn_l4_d1": MovieClip(root).gotoAndStop(2,"lesson4");
				break;
				case "btn_l4_d2": MovieClip(root).gotoAndStop(9,"lesson4");
				break;
				case "btn_l4_d3": MovieClip(root).gotoAndStop(19,"lesson4");
				break;
				case "btn_l4_d4": MovieClip(root).gotoAndStop(24,"lesson4");
				break;
				case "btn_l4_d5": MovieClip(root).gotoAndStop(28,"lesson4");
				break;
				case "l4_back": MovieClip(root).gotoAndStop(1,"lesson4");
				break;
				
				// lesson 5
					case "btn_l5_d1": MovieClip(root).gotoAndStop(2,"lesson5");
				break;
				case "btn_l5_d22": MovieClip(root).gotoAndStop(9,"lesson5");
				break;
				case "btn_l5_d3": MovieClip(root).gotoAndStop(14,"lesson5");
				break;
				case "btn_l5_d4": MovieClip(root).gotoAndStop(20,"lesson5");
				break;
				case "btn_l5_d5": MovieClip(root).gotoAndStop(25,"lesson5");
				break;
				case "l5_back": MovieClip(root).gotoAndStop(1,"lesson5");
				break;
				
				// lesson 6
				case "btn_l6_d1": MovieClip(root).gotoAndStop(2,"lesson6");
				break;
				case "btn_l6_d2": MovieClip(root).gotoAndStop(17,"lesson6");
				break;
				case "btn_l6_d3": MovieClip(root).gotoAndStop(26,"lesson6");
				break;
				case "btn_l6_d4": MovieClip(root).gotoAndStop(37,"lesson6");
				break;
				case "btn_l6_d5": MovieClip(root).gotoAndStop(46,"lesson6");
				break;
				case "l6_back": MovieClip(root).gotoAndStop(1,"lesson6");
				break;
			}
		}

	}
	
}
