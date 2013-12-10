package org.test.event
{
	import flash.events.Event;
	
	public class testEvent extends Event
	{
		public static const SHAPE:String="SHAPE";
		public static const SHAPEUPDATE:String="SHAPEUPDATE";

		public function testEvent(type:String)
		{
			super(type);
		}
		override public function clone():Event
		{
			return new testEvent(this.type);
		}
	}
}