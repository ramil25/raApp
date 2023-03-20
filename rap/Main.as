package rap{
    import flash.display.MovieClip;

    public class Main extends MovieClip{

        public function Main() {
           
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
	}
}