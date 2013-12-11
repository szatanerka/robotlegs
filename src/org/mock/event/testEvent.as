/**
 *Dispatched when the user presses on panel and move the mouse.
 *this event is dispatched repeatedly as long as the button stays down.
 *
 *@eventType
 */
package org.mock.event
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