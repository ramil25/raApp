package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.Event;


	public class Level2Day2 extends MovieClip {

		public function Level2Day2() {
		
		}
		
		public function playButtons(e:MouseEvent):void
		{
			switch(e.currentTarget.name) {
				case "btnStart_l2_d2":
					MovieClip(root).gotoAndStop(10,"lesson2");
				break;
				case "btnShow_l2_d2":
					MovieClip(root).gotoAndStop(11,"lesson2");
				break;
				default: 
					trace("Button not found in this frame.");
			}
		}
		
		//declare sound class
		// long ee sounds
		public var see:SeeSound = new SeeSound();
		public var tee:TeeSound = new TeeSound();
		public var bee:BeeSound = new BeeSound();
		public var eel:EelSound = new EelSound();
		public var deed:DeedSound = new DeedSound();
		public var feed:FeedSound = new FeedSound();
		public var seed:SeedSound = new SeedSound();
		public var weed:WeedSound = new WeedSound();
		public var need:NeedSound = new NeedSound();
		public var beef:BeefSound = new BeefSound();
		public var reef:ReefSound = new ReefSound();
		public var week:WeekSound = new WeekSound();
		public var seek:SeekSound = new SeekSound();
		public var leek:LeekSound = new LeekSound();
		public var peek:PeekSound = new PeekSound();
		public var feel:FeelSound = new FeelSound();
		public var heel:HeelSound = new HeelSound();
		public var jeep:JeepSound = new JeepSound();
		public var deep:DeepSound = new DeepSound();
		public var keep:KeepSound = new KeepSound();
		public var beep:BeepSound = new BeepSound();
		public var cheek:CheekSound = new CheekSound();
		public var teeth:TeethSound = new TeethSound();
		public var queen:QueenSound = new QueenSound();
		// long ea sounds
		public var eat:EatSound = new EatSound();
		public var sea:SeaSound = new SeaSound();
		public var tea:TeaSound = new TeaSound();
		public var meat:MeatSound = new MeatSound();
		public var seat:SeatSound = new SeatSound();
		public var beak:BeakSound = new BeakSound();
		public var weak:WeakSound = new WeakSound();
		public var peak:PeakSound = new PeakSound();
		public var leak:LeakSound = new LeakSound();
		public var team:TeamSound = new TeamSound();
		public var bean:BeanSound = new BeanSound();
		public var meal:MealSound = new MealSound();
		public var heat:HeatSound = new HeatSound();
		public var beach:BeachSound = new BeachSound();
		public var jeans:JeansSound = new JeansSound();
		public var bead:BeadSound = new BeadSound();
		public var eagle:EagleSound = new EagleSound();
		public var peach:PeachSound = new PeachSound();
		public var tear:TearSound = new TearSound();
		public var neat:NeatSound = new NeatSound();
		public var clean:CleanSound = new CleanSound();
		public var leaf:LeafSound = new LeafSound();
		public var seal:SealSound = new SealSound();
		public var beat:BeatSound = new BeatSound();
		public var read:ReadSound = new ReadSound();
		// long oa sounds
		public var boat:BoatSound = new BoatSound();
		public var coat:CoatSound = new CoatSound();
		public var goat:GoatSound = new GoatSound();
		public var goal:GoalSound = new GoalSound();
		public var foam:FoamSound = new FoamSound();
		public var roam:RoamSound = new RoamSound();
		public var loan:LoanSound = new LoanSound();
		public var loaf:LoafSound = new LoafSound();
		public var soap:SoapSound = new SoapSound();
		public var load:LoadSound = new LoadSound();
		public var float:FloatSound = new FloatSound();
		public var road:RoadSound = new RoadSound();
		public var coal:CoalSound = new CoalSound();
		public var throat:ThroatSound = new ThroatSound();
		public var toast:ToastSound = new ToastSound();
		// long ow sounds
		public var low:LowSound = new LowSound();
		public var row:RowSound = new RowSound();
		public var bow:BowSound = new BowSound();
		public var tow:TowSound = new TowSound();
		public var glow:GlowSound = new GlowSound();
		public var snow:SnowSound = new SnowSound();
		public var know:KnowSound = new KnowSound();
		public var show:ShowSound = new ShowSound();
		public var slow:SlowSound = new SlowSound();
		public var grow:GrowSound = new GrowSound();
		public var arrow:ArrowSound = new ArrowSound();
		public var below:BelowSound = new BelowSound();
		public var fellow:FellowSound = new FellowSound();
		public var hollow:HollowSound = new HollowSound();
		public var pillow:PillowSound = new PillowSound();
		public var follow:FollowSound = new FollowSound();
		public var window:WindowSound = new WindowSound();
		public var yellow:YellowSound = new YellowSound();
		public var flow:FlowSound = new FlowSound();
	
		// Method for playing sounds
		public function playSounds(event:MouseEvent):void
		{
			switch(event.currentTarget.name)
			{
				case "see": see.play();
				break;
				case "tee": tee.play();
				break;
				case "bee": bee.play();
				break;
				case "eel": eel.play();
				break;
				case "deed": deed.play();
				break;
				case "feed": feed.play();
				break;
				case "seed": seed.play();
				break;
				case "weed": weed.play();
				break;
				case "need": need.play();
				break;
				case "beef": beef.play();
				break;
				case "reef": reef.play();
				break;
				case "week": week.play();
				break;
				case "seek": seek.play();
				break;
				case "leek": leek.play();
				break;
				case "peek": peek.play();
				break;
				case "feel": feel.play();
				break;
				case "heel": heel.play();
				break;
				case "jeep": jeep.play();
				break;
				case "deep": deep.play();
				break;
				case "keep": keep.play();
				break;
				case "beep": beep.play();
				break;
				case "cheek": cheek.play();
				break;
				case "teeth": teeth.play();
				break;
				case "queen": 
					queen.play();
					MovieClip(root).gotoAndStop(12,"lesson2");
				break;
				case "eat": eat.play();
				break;
				case "sea": sea.play();
				break;
				case "tea": tea.play();
				break;
				case "meat": meat.play();
				break;
				case "seat": seat.play();
				break;
				case "beak": beak.play();
				break;
				case "weak": weak.play();
				break;
				case "peak": peak.play();
				break;
				case "leak": leak.play();
				break;
				case "team": team.play();
				break;
				case "bean": bean.play();
				break;
				case "meal": meal.play();
				break;
				case "heat": heat.play();
				break;
				case "beach": beach.play();
				break;
				case "jeans": jeans.play();
				break;
				case "bead": bead.play();
				break;
				case "eagle": eagle.play();
				break;
				case "peach": peach.play();
				break;
				case "tear": tear.play();
				break;
				case "neat": neat.play();
				break;
				case "clean": clean.play();
				break;
				case "leaf": leaf.play();
				break;
				case "seal": seal.play();
				break;
				case "beat": beat.play();
				break;
				case "read": 
					read.play();
					MovieClip(root).gotoAndStop(13,"lesson2");
				break;
				case "boat": boat.play();
				break;
				case "coat": coat.play();
				break;
				case "goat": goat.play();
				break;
				case "goal": goal.play();
				break;
				case "foam": foam.play();
				break;
				case "roam": roam.play();
				break;
				case "loan": loan.play();
				break;
				case "loaf": loaf.play();
				break;
				case "soap": soap.play();
				break;
				case "loadd": load.play();
				break;
				case "float": float.play();
				break;
				case "road": road.play();
				break;
				case "coal": coal.play();
				break;
				case "throat": throat.play();
				break;
				case "toast": 
					toast.play();
					MovieClip(root).gotoAndStop(14,"lesson2");
				break;
				case "low": low.play();
				break;
				case "row": row.play();
				break;
				case "bow": bow.play();
				break;
				case "tow": tow.play();
				break;
				case "glow": glow.play();
				break;
				case "snow": snow.play();
				break;
				case "know": know.play();
				break;
				case "show": show.play();
				break;
				case "slow": slow.play();
				break;
				case "grow": grow.play();
				break;
				case "arrow": arrow.play();
				break;
				case "below": below.play();
				break;
				case "fellow": fellow.play();
				break;
				case "hollow": hollow.play();
				break;
				case "pillow": pillow.play();
				break;
				case "follow": follow.play();
				break;
				case "window": window.play();
				break;
				case "yellow": yellow.play();
				break;
				case "flow": 
					flow.play();
					MovieClip(root).gotoAndStop(34,"lesson2");
				break;
				default: trace("No sound was found");
			}
		}
	}

}