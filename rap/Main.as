package{
    import flash.display.MovieClip;
    import flash.display.Scene;
	import Level1Day1;
	import Level2Day2;
	import flash.display.Stage;
	
    public class Main extends MovieClip{

		public var l1d1:Level1Day1 = new Level1Day1();
		public var l2d2:Level2Day2 = new Level2Day2();
		
        public function Main() {
			addChild(l1d1);
			addChild(l2d2);
        }
		
		// Button function for levels
		public function levelButtons(e:MouseEvent):void {
			
			// switch statement for identifying selected levels
			switch(e.currentTarget.name){
				case "l1":
					gotoAndStop(1,"lesson1");
					break;
				case "l2":
					gotoAndStop(1,"lesson2");
					break;
				case "l3":
					gotoAndStop(1,"lesson3");
					break;
				case "l4":
					gotoAndStop(1,"lesson4");
					break;
				case "l5":
					gotoAndStop(1,"lesson5");
					break;
				case "l6":
					gotoAndStop(1,"lesson6");
					break;
				case "return_btn":
					gotoAndStop(3,"mainScreen"); // go back to menu levels
					break;
				default:
					trace("button not found");
			}
			
			
		}
		//functions for level days buttons
		public function levelDaysButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "l1d1Btn":gotoAndStop(2,"lesson1");
				break;
				case "l1BackBtn": gotoAndStop(1,"lesson1");
				break;
				case "l1LetsPlayBtn":gotoAndStop(3,"lesson1");
				break;
				case "btn_l2_d2":gotoAndStop(9,"lesson2");
				break;
				default: trace("button not found");
					
			}
		}
		
	}
}