package rap{
    import flash.display.MovieClip;

    public class Main extends MovieClip{

        public function Main() {
           
        }
		public function levelButtons(e:MouseEvent):void {
            switch(e.currentTarget.name){
                case "l1":
                    gotoAndStop(1,"lesson1");
                    break;
                case "l2":
                    gotoAndStop(1,"lesson2");
                    break;
                default:
                    trace("button not found");
            }
    }
}
}