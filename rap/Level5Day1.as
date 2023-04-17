package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;

	public class Level5Day1 extends MovieClip {

		public function Level5Day1() {
			// constructor code
		}
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound:Sound = new CorrectSound();
		public var wSound:Sound = new WrongSound();
		public var countCorrect:int = 0;
		public function nextPage(e: MouseEvent): void {
			MovieClip(root).nextFrame();
			//e.currentTarget.removeEventListener(MouseEvent.CLICK, this.nextPage);
		}
		//drag and drop
		public function dragIt(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			event.currentTarget.startDrag();
		}
		function dropIt(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			if((event.currentTarget.name=="dr1" || event.currentTarget.name=="dr2") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider1))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider1.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider1.y-10;
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
					MovieClip(root).gotoAndStop(30,"lesson5");
			}
			else if((event.currentTarget.name=="dr1" || event.currentTarget.name=="dr2") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider2))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider2.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider2.y-10;
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
					MovieClip(root).gotoAndStop(30,"lesson5");
			}
			else if((event.currentTarget.name=="br1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider3))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider3.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider3.y-10;
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
					MovieClip(root).gotoAndStop(30,"lesson5");
			}
			else if((event.currentTarget.name=="fr1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider4))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider4.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider4.y-10;
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
					MovieClip(root).gotoAndStop(30,"lesson5");
			}
			else if((event.currentTarget.name=="tr1") && event.currentTarget.hitTestObject(MovieClip(root).pointCollider5))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.dragIt);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.dropIt);
				event.currentTarget.x = MovieClip(this.root).pointCollider5.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider5.y-10;
				cSound.play();
				countCorrect = countCorrect+1;
				if(countCorrect ==5)
					MovieClip(root).gotoAndStop(30,"lesson5");
			}
			else{
				event.currentTarget.x = getX;
				event.currentTarget.y = getY;
				wSound.play();
				getX = 0;
				getY = 0;
			}
		}


	}

}