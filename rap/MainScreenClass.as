package rap{
    import flash.events.MouseEvent;
    import flash.display.MovieClip;

    public class MainScreenClass extends MovieClip {

        public function MainScreenClass() {
            var button1:MovieClip = Main(this).getChildByName("l1") as MovieClip;
            var button2:MovieClip = Main(this).getChildByName("l2") as MovieClip;

            button1.addEventListener(MouseEvent.CLICK, levelButtons);
            button2.addEventListener(MouseEvent.CLICK, levelButtons);
        }

       
        }

    }
}
