package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.media.*;
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	
	
	
	public class Suling extends MovieClip {
		var mySound:Sound = new littlestar();
		var point:int = 0;
		
		var zKey:Boolean = true;
		var xKey:Boolean = true;
		var cKey:Boolean = true;
		var vKey:Boolean = true;
		var bKey:Boolean = true;
		var nKey:Boolean = true;
		
		var kondisi:String;
		var not:String;
		
		public function Suling() {
			// constructor code
		}
		
	
		private function pencet(event:KeyboardEvent):void {
			if (event.keyCode==90) //kode keyboard "Z"
			{
				gotoAndStop("song");//menuju frame dengan label "song"
				
			}
		}
		
		private function pencet1(event:KeyboardEvent):void {
			if (event.keyCode==90) //kode keyboard "Z"
			{
				gotoAndStop("game"); //menuju frame dengan label "song"
				mySound.play();
				
				
			}
			if (event.keyCode==66) //kode keyboard "Z"
			{
				gotoAndStop("menu"); //menuju frame dengan label "song"
			}
			
		}

		private function pencet2(event:KeyboardEvent):void {

			if (event.keyCode==86) //kode keyboard "Z"
			{
				gotoAndStop("game"); //menuju frame dengan label "song"
				mySound.play();
				
			}
			if (event.keyCode==66) //kode keyboard "Z"
				{
					gotoAndStop("song"); //menuju frame dengan label "song"
				}
		}
			
		public function ScoreGame(){
			Score.text = point.toString();
		}
		
		public function setScore(kondisi:String){
			if(kondisi == "perfect"){
				point += 100;
			}else if(kondisi == "great"){
				point += 50;
			}else if(kondisi == "miss"){
				point += 0;
			}
			trace(kondisi);
		}
		
		public function gameControl(param1:String, param2:String){
			kondisi = param1;
			not = param2;
		}
		
		private function pencet6(event:KeyboardEvent){
				if(event.keyCode == 90){
					switch(not){
						case "do":
							zControlDown(kondisi);
							break;
						case "re":
							zControlDown(kondisi);
							break;
						case "mi":
							zControlDown(kondisi);
							break;
						case "fa":
							zControlDown(kondisi);
							break;
						case "sol":
							zControlDown(kondisi);
							break;
						case "la":
							zControlDown(kondisi);
							break;
						case "si":
							zControlDown("miss");
							break;
						case "do2":
							zControlDown(kondisi);
							break;
					}
				}
				if(event.keyCode == 88){
					switch(not){
						case "do":
							xControlDown(kondisi);
							break;
						case "re":
							xControlDown(kondisi);
							break;
						case "mi":
							xControlDown(kondisi);
							break;
						case "fa":
							xControlDown(kondisi);
							break;
						case "sol":
							xControlDown(kondisi);
							break;
						case "la":
							xControlDown(kondisi);
							break;
						case "si":
							xControlDown("miss");
							break;
						case "do2":
							xControlDown(kondisi);
							break;
					}
				}
				if(event.keyCode == 67){
					switch(not){
						case "do":
							cControlDown(kondisi);
							break;
						case "re":
							cControlDown(kondisi);
							break;
						case "mi":
							cControlDown(kondisi);
							break;
						case "fa":
							cControlDown(kondisi);
							break;
						case "sol":
							cControlDown("miss");
							break;
						case "la":
							cControlDown("miss");
							break;
						case "si":
							cControlDown("miss");
							break;
						case "do2":
							cControlDown(kondisi);
							break;
					}
				}
				if(event.keyCode == 86){
					switch(not){
						case "do":
							vControlDown(kondisi);
							break;
						case "re":
							vControlDown(kondisi);
							break;
						case "mi":
							vControlDown(kondisi);
							break;
						case "fa":
							vControlDown("miss");
							break;
						case "sol":
							vControlDown("miss");
							break;
						case "la":
							vControlDown("miss");
							break;
						case "si":
							vControlDown("miss");
							break;
						case "do2":
							vControlDown(kondisi);
							break;
					}
				}
				if(event.keyCode == 66){
					switch(not){
						case "do":
							bControlDown(kondisi);
							break;
						case "re":
							bControlDown(kondisi);
							break;
						case "mi":
							bControlDown("miss");
							break;
						case "fa":
							bControlDown("miss");
							break;
						case "sol":
							bControlDown("miss");
							break;
						case "la":
							bControlDown("miss");
							break;
						case "si":
							bControlDown("miss");
							break;
						case "do2":
							bControlDown(kondisi);
							break;
					}
				}
				if(event.keyCode == 78){
					switch(not){
						case "do":
							nControlDown(kondisi);
							break;
						case "re":
							nControlDown("miss");
							break;
						case "mi":
							nControlDown("miss");
							break;
						case "fa":
							nControlDown("miss");
							break;
						case "sol":
							nControlDown("miss");
							break;
						case "la":
							nControlDown("miss");
							break;
						case "si":
							nControlDown("miss");
							break;
						case "do2":
							nControlDown(kondisi);
							break;
					}
				}
			}
		private function pencet7(event:KeyboardEvent){
				if(event.keyCode == 90){
					zKey = true;
				}
				if(event.keyCode == 88){
					xKey = true;
				}
				if(event.keyCode == 67){
					cKey = true;
				}
				if(event.keyCode == 86){
					vKey = true;
				}
				if(event.keyCode == 66){
					bKey = true;
				}
				if(event.keyCode == 78){
					nKey = true;
				}
			}
		public function zControlDown(kondisi:String){
			if(zKey){
				setScore(kondisi);
				zKey = false;
			}
		}
		public function xControlDown(kondisi:String){
			if(xKey){
				setScore(kondisi);
				xKey = false;
			}
		}
		public function cControlDown(kondisi:String){
			if(cKey){
				setScore(kondisi);
				cKey = false;
			}
		}
		public function vControlDown(kondisi:String){
			if(vKey){
				setScore(kondisi);
				vKey = false;
			}
		}
		public function bControlDown(kondisi:String){
			if(bKey){
				setScore(kondisi);
				bKey = false;
			}
		}
		public function nControlDown(kondisi:String){
			if(nKey){
				setScore(kondisi);
				nKey = false;
			}
		}
	}
}
