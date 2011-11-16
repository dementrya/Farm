package 
{
		
	//грядка с растением
	public class Plant 
		{
			public var type:String;
			public var id:int;
			public var x:int;
			public var y:int;
			public var process_end:int;
			public var state:int;
			
			public function Plant(type:String, id:int, x:int, y:int, process_end:int):void
			{
				this.type = type;
				this.id = id;
				this.x = x;
				this.y = y;
				this.process_end = process_end;
				calcPlantState(process_end);
			}
			
			public function calcPlantState(pr_end:int):void
			{
				var st:int = 5 - Math.floor(pr_end / 10000000);
				st = (st > 5)?5: st;
				st = (st < 1)?1: st;
				this.state = st;
			}
			
		}

}