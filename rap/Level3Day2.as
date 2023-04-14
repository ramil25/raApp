package {
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;

	public class Level3Day2 extends MovieClip {

		public function Level3Day2() {
			// constructor code
		}

		public var robot1Sound: Sound = new L3D2Robot1Sound();
		public var robot2Sound: Sound = new L3D2Robot2Sound();
		public var getX: int = 0;
		public var getY: int = 0;
		public var cSound: Sound = new CorrectSound();
		public var wSound: Sound = new WrongSound();
		public function nextFramed(e: MouseEvent): void {
			e.currentTarget.removeEventListener(MouseEvent.CLICK, this.nextFramed);
			if(MovieClip(this.root).currentFrame ==19)
			{
				MovieClip(this.root).gotoAndStop(43);
			}
			else{
				MovieClip(root).nextFrame();
			}
		}

		//drag and drop
		public function startDragg(event: MouseEvent): void {
			getX = event.currentTarget.x;
			getY = event.currentTarget.y;
			event.currentTarget.startDrag();
		}

		public function stopDragg(event: MouseEvent): void {
			event.currentTarget.stopDrag();
			if(MovieClip(this.root).currentFrame==15 && event.currentTarget.name=="c3_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = 468;
				event.currentTarget.y = 357;
				cSound.play();
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==16 && event.currentTarget.name=="c3_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				cSound.play();
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==17 && event.currentTarget.name=="c1_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				cSound.play();
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==18 && event.currentTarget.name=="c1_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				cSound.play();
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else if(MovieClip(this.root).currentFrame==19 && event.currentTarget.name=="c1_btn" && event.currentTarget.hitTestObject(MovieClip(this.root).pointCollider))
			{
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_DOWN, this.startDragg);
				event.currentTarget.removeEventListener(MouseEvent.MOUSE_UP, this.stopDragg);
				event.currentTarget.x = MovieClip(this.root).pointCollider.x;
				event.currentTarget.y = MovieClip(this.root).pointCollider.y-10;
				cSound.play();
				MovieClip(this.root).nextBtn.visible = true;
				MovieClip(this.root).nextBtn.addEventListener(MouseEvent.CLICK, this.nextFramed);
			}
			else{
				event.currentTarget.x = getX;
				event.currentTarget.y = getY;
				wSound.play();
				getX = 0;
				getY = 0;
			}
		}
		
		public function ZoomObject(e:MouseEvent):void
		{
			switch(e.currentTarget.name)
			{
				case "wayZoomBtn": e.currentTarget.play();
				break;
				case "catZoomBtn": e.currentTarget.play();
				break;
			}
		}

	}

}