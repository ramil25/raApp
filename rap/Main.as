package{
    import flash.display.MovieClip;
    import flash.display.Scene;
	import Level1Day1;
	import Level1Day3;
	import l1Day4;
	import Level2Day1;
	import Level2Day2;
	import Level2Day3;
	import Level2Day4;
	import Level2Day5;
	import flash.display.Stage;
	import flash.media.Sound;
	
    public class Main extends MovieClip{

		public var l1d1:Level1Day1 = new Level1Day1();
		public var l1Day2:level1day2 = new level1day2();
		public var l1Day3:Level1Day3 = new Level1Day3();
		public var l1d4:l1Day4 = new l1Day4();
		public var l1d5:Level1Day5 = new Level1Day5();
		public var l2d1:Level2Day1 = new Level2Day1();
		public var l2d2:Level2Day2 = new Level2Day2();
		public var l2d3:Level2Day3 = new Level2Day3();
		public var l2d4:Level2Day4 = new Level2Day4();
		public var l2d5:Level2Day5 = new Level2Day5();
		public var allDaysButtons:AllDaysButtons = new AllDaysButtons();
		
        public function Main() {
			addChild(l1d1);
			addChild(l1Day2);
			addChild(l1Day3);
			addChild(l1d4);
			addChild(l1d5);
			addChild(l2d1);
			addChild(l2d2);
			addChild(l2d3);
			addChild(l2d4);
			addChild(l2d5);
			addChild(allDaysButtons);
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
		public var title1:Sound = new Title1Sound();
		public function levelDaysButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "l1d1Btn":gotoAndStop(2,"lesson1");
				break;
				case "l1d2Btn":gotoAndStop(9,"lesson1");
				break;
				case "l1d3Btn":gotoAndStop(16,"lesson1");
				break;
				case "l1d4Btn":gotoAndStop(23,"lesson1");
				break;
				case "l1d5Btn":gotoAndStop(28,"lesson1");
				break;
				case "l1BackBtn": gotoAndStop(1,"lesson1");
				break;
				case "l1LetsPlayBtn":gotoAndStop(3,"lesson1");
				break;
				case "l1d3PlayBtn":gotoAndStop(17,"lesson1");
				break;
				case "l1d4PlayBtn":gotoAndStop(24,"lesson1");
						title1.play();
				break;
				case "btn_l2_d1":gotoAndStop(2,"lesson2");
				break;
				case "btn_l2_d2":gotoAndStop(9,"lesson2");
				break;
				case "btn_l2_d3":gotoAndStop(15,"lesson2");
				break;
				case "btn_l2_d4":gotoAndStop(25,"lesson2");
				break;
				case "btn_l2_d5":gotoAndStop(29,"lesson2");
				break;
				default: trace("button not found");
					
			}
		}
		
	}
}