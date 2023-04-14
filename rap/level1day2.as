package {
	import flash.events.MouseEvent;
	import flash.display.*;
	import flash.media.Sound;

	public class level1day2 extends MovieClip {

		public function level1day2() {
			// constructor code
		}
		//level 1 day 2 buttons control
		public function playWords(event: MouseEvent): void {
			switch (event.currentTarget.name) {
				case "l1d2PlayBtn":
					MovieClip(root).gotoAndStop(10, "lesson1");
					break;
				case "playl1d2":
					MovieClip(root).gotoAndStop(11, "lesson1");
					break;
				default:
					trace("button not recognized");
			}
		}

		//click to play Sounds
		public var rat:RatSound = new RatSound();
		public var cat:CatSound = new CatSound();
		public var fat:FatSound = new FatSound();
		public var mat:MatSound = new MatSound();
		public var sat:SatSound = new SatSound();
		
		public var man:ManSound = new ManSound();
		public var van:VanSound = new VanSound();
		public var can:CanSound = new CanSound();
		public var tan:TanSound = new TanSound();
		public var fan:FanSound = new FanSound();
		
		public var bad:BadSound = new BadSound();
		public var dad:DadSound = new DadSound();
		public var had:HadSound = new HadSound();
		public var mad:MadSound = new MadSound();
		public var sad:SadSound = new SadSound();
		
		public var bag:BagSound = new BagSound();
		public var hag:HagSound = new HagSound();
		public var rag:RagSound = new RagSound();
		public var tag:TagSound = new TagSound();
		public var wag:WagSound = new WagSound();
		
		public var cap:CapSound = new CapSound();
		public var tap:TapSound = new TapSound();
		public var nap:NapSound = new NapSound();
		public var lap:LapSound = new LapSound();
		public var map:MapSound = new MapSound();
		public function playWordSounds(event: MouseEvent): void {
			var aSounds: Array = new Array("ratBtn", "catBtn", "fatBtn", "matBtn", "satBtn",
											"manBtn", "vanBtn", "canBtn", "tanBtn", "fanBtn",
											"badBtn", "dadBtn", "hadBtn", "madBtn", "sadBtn",
											"bagBtn", "hagBtn", "ragBtn", "tagBtn", "wagBtn",
											"capBtn", "tapBtn", "napBtn", "lapBtn");
			
			var soundVar:Array = new Array(rat,cat,fat,mat,sat,man,van,can,tan,fan,bad,dad,had,mad,sad,
											bag,hag,rag,tag,wag,cap,tap,nap,lap);
			//page1

			for (var i: int = 0; i < aSounds.length; i++) {
				if(event.currentTarget.name ==aSounds[i]) {
					soundVar[i].play();
					}
			}if(event.currentTarget.name == "mapBtn"){
					map.play(); 
					MovieClip(root).gotoAndStop(12,"lesson1");
				
					}

		}// end of a sounds
		//e sounds
		public var bed:BedSound = new BedSound();
		public var red:RedSound = new RedSound();
		public var ted:TedSound = new TedSound();
		public var wed:WedSound = new WedSound();
		public var fed:FedSound = new FedSound();
		public var ben:BenSound = new BenSound();
		public var hen:HenSound = new HenSound();
		public var pen:PenSound = new PenSound();
		public var men:MenSound = new MenSound();
		public var ten:TenSound = new TenSound();
		public var pet:PetSound = new PetSound();
		public var lett:LetSound = new LetSound();
		public var sett:SetSound = new SetSound();
		public var met:MetSound = new MetSound();
		public var gett:GetSound = new GetSound();
		public var beg:BegSound = new BegSound();
		public var keg:KegSound = new KegSound();
		public var leg:LegSound = new LegSound();
		public var peg:PegSound = new PegSound();
		public var web:WebSound = new WebSound();
		public var yes:YesSound = new YesSound();
		public var hem:HemSound = new HemSound();
		public var gem:GemSound = new GemSound();
		public function playEWordSounds(event: MouseEvent): void {
			var eSounds: Array = new Array("bedBtn", "redBtn", "tedBtn", "wedBtn", "fedBtn",
											"benBtn", "henBtn", "penBtn", "menBtn", "tenBtn",
											"petBtn", "letBtn", "setBtn", "metBtn", "getBtn",
											"begBtn", "kegBtn", "legBtn", "pegBtn", 
											"webBtn", "yesBtn", "hemBtn", "gemBtn");
			
			var soundVar:Array = new Array(bed,red,ted,wed,fed,ben,hen,pen,men,ten,pet,lett,sett,met,gett,
											beg,keg,leg,peg,web,yes,hem,gem);
			//page1

			for (var i: int = 0; i < eSounds.length; i++) {
				if(event.currentTarget.name ==eSounds[i]) {
					soundVar[i].play();
					}
			}if(event.currentTarget.name == "yesBtn2"){
					yes.play(); 
					MovieClip(root).gotoAndStop(13,"lesson1");
				
					}

		}// end of e sounds
		//i Sounds
		public var bin:BinSound = new BinSound();
		public var sinn:SinSound = new SinSound();
		public var win:WinSound = new WinSound();
		public var tin:TinSound = new TinSound();
		public var pin:PinSound = new PinSound();
		public var big:BigSound = new BigSound();
		public var dig:DigSound = new DigSound();
		public var wig:WigSound = new WigSound();
		public var pig:PigSound = new PigSound();
		public var fig:FigSound = new FigSound();
		public var bit:BitSound = new BitSound();
		public var hit:HitSound = new HitSound();
		public var fit:FitSound = new FitSound();
		public var sit:SitSound = new SitSound();
		public var kit:KitSound = new KitSound();
		public var dip:DipSound = new DipSound();
		public var hip:HipSound = new HipSound();
		public var rip:RipSound = new RipSound();
		public var sip:SipSound = new SipSound();
		public var tip:TipSound = new TipSound();
		public var fix:FixSound = new FixSound();
		public var mix:MixSound = new MixSound();
		public var six:SixSound = new SixSound();
		public var dim:DimSound = new DimSound();
		public var rim:RimSound = new RimSound();

		public function playIWordSounds(event: MouseEvent): void {
			var iSounds: Array = new Array("binbtn", "sinbtn", "winbtn", "tinbtn", "pinbtn",
											"bigbtn", "digbtn", "wigbtn", "pigbtn", "figbtn",
											"bitbtn", "hitbtn", "fitbtn", "sitbtn", "kitbtn",
											"dipbtn", "hipbtn", "ripbtn", "sipbtn", "tipbtn",
											"fixbtn", "mixbtn", "sixbtn", "dimbtn");
			
			var soundVar:Array = new Array(bin,sinn,win,tin,pin,big,dig,wig,pig,fig,bit,hit,fit,sit,kit,
											dip,hip,rip,sip,tip,fix,mix, six,dim);
			//page1

			for (var i: int = 0; i < iSounds.length; i++) {
				if(event.currentTarget.name ==iSounds[i]) {
					soundVar[i].play();
					}
			}if(event.currentTarget.name == "rimbtn"){
					rim.play(); 
					MovieClip(root).gotoAndStop(14,"lesson1");
				
					}

		}// end of e sounds

		//o sounds
		public var dog:Sound = new DogSound();
		public var jog:Sound = new JogSound();
		public var logg:Sound = new LogSound();
		public var jogg:Sound = new JogSound();
		public var fog:Sound = new FogSound();
		public var cop:Sound = new CopSound();
		public var mop:Sound = new MopSound();
		public var hop:Sound = new HopSound();
		public var popp:Sound = new PopSound();
		public var topp:Sound = new TopSound();
		public var nott:Sound = new NotSound();
		public var cot:Sound = new CotSound();
		public var lot:Sound = new LotSound();
		public var pot:Sound = new PotSound();
		public var rot:Sound = new RotSound();
		public var sob:Sound = new SobSound();
		public var rob:Sound = new RobSound();
		public var cob:Sound = new CobSound();
		public var mob:Sound = new MobSound();
		public var job:Sound = new JobSound();
		public var rod:Sound = new RodSound();
		public var mom:Sound = new MomSound();
		public var box:Sound = new BoxSound();
		public var fox:Sound = new FoxSound();
		public var pox:Sound = new PoxSound();

		public function playOWordSounds(event: MouseEvent): void {
			var oSounds: Array = new Array("dogbtn", "jogbtn", "logbtn", "jogbtn2", "fogbtn",
											"copbtn", "mopbtn", "hopbtn", "popbtn", "topbtn",
											"notbtn", "cotbtn", "lotbtn", "potbtn", "rotbtn",
											"sobbtn", "robbtn", "cobbtn", "mobbtn", "jobbtn",
											"rodbtn", "mombtn", "boxbtn", "foxbtn");
			
			var soundVar:Array = new Array(dog,jog,logg,jogg,fog,cop,mop,hop,popp,topp,nott,cot,lot,pot,rot,
											sob,rob,cob,mob,job,rod,mom, box,fox);
			//page1

			for (var i: int = 0; i < oSounds.length; i++) {
				if(event.currentTarget.name ==oSounds[i]) {
					soundVar[i].play();
					}
			}if(event.currentTarget.name == "poxbtn"){
					pox.play(); 
					MovieClip(root).gotoAndStop(15,"lesson1");
				
					}

		}// end of o sounds

		//u sounds
		public var dug:Sound = new DugSound();
		public var jug:Sound = new JugSound();
		public var mug:Sound = new MugSound();
		public var rug:Sound = new RugSound();
		public var tug:Sound = new TugSound();
		public var but:Sound = new ButSound();
		public var cut:Sound = new CutSound();
		public var hut:Sound = new HutSound();
		public var nut:Sound = new NutSound();
		public var rut:Sound = new RutSound();
		public var bun:Sound = new BunSound();
		public var fun:Sound = new FunSound();
		public var gun:Sound = new GunSound();
		public var run:Sound = new RunSound();
		public var sun:Sound = new SunSound();
		public var cub:Sound = new CubSound();
		public var hub:Sound = new HubSound();
		public var rub:Sound = new RubSound();
		public var sub:Sound = new SubSound();
		public var tub:Sound = new TubSound();
		public var cup:Sound = new CupSound();
		public var pup:Sound = new PupSound();
		public var bus:Sound = new BusSound();
		public var bum:Sound = new BumSound();
		public var gum:Sound = new GumSound();

		public function playUWordSounds(event: MouseEvent): void {
			var uSounds: Array = new Array("dugbtn", "jugbtn", "mugbtn", "rugbtn", "tugbtn",
											"butbtn", "cutbtn", "hutbtn", "nutbtn", "rutbtn",
											"bunbtn", "funbtn", "gunbtn", "runbtn", "sunbtn",
											"cubbtn", "hubbtn", "rubbtn", "subbtn", "tubbtn",
											"cupbtn", "pupbtn", "busbtn", "bumbtn");
			
			var soundVar:Array = new Array(dug,jug,mug,rug,tug,but,cut,hut,nut,rut,bun,fun,gun,run,sun,
											cub,hub,rub,sub,tub,cup,pup, bus,bum);
			//page1

			for (var i: int = 0; i < uSounds.length; i++) {
				if(event.currentTarget.name ==uSounds[i]) {
					soundVar[i].play();
					}
			}if(event.currentTarget.name == "gumbtn"){
					gum.play(); 
					MovieClip(root).gotoAndStop(35,"lesson1");
				
					}

		}// end of u sounds
	}

}