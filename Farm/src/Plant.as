package 
{
		
	//грядка с растением
	public class Plant 
		{
			private var type:String;
			private var id:int;
			private var x:int;
			private var y:int;
			private var process_end:int;
			private var state:int;

			public function getX():int { return x; }
			public function setX(x:int ):void { this.x = x; }
			
			public function getY():int { return y; }
			public function setY(y:int ):void { this.y = y; }
			
			public function getProcess_end():int { return process_end; }
			public function setProcess_end(process_end:int ):void { this.process_end = process_end; }
			
			public function getState():int { return state; }
			public function setState(state:int ):void { this.state = state; }
			
			public function getType():String { return type; }
			public function setType(type:String ):void { this.type = type; }
			
			
			
			public function Plant(type:String, id:int, x:int, y:int, process_end:int):void
			{
				this.type = type;
				this.id = id;
				this.x = x;
				this.y = y;
				this.process_end = process_end;
				calcPlantState();
			}
			
			public function calcPlantState():void
			{
				var st:int = 5 - Math.floor(this.process_end / 10000000);
				st = (st > 5)?5: st;
				st = (st < 1)?1: st;
				this.state = st;
			}
			
		}

}