/**
 * Model class.
 */
package org.mock.model
{
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	
	import org.mock.red5.Red5Test;
	import org.robotlegs.mvcs.Actor;
	import org.mock.event.testEvent;
	
	public class Model extends Actor
	{
		private var _shape:Point ;
		private var test:Red5Test = new Red5Test();
		public function Model()
		{
		}
		/** 
		* The horizontal and vertical distances of point (x,y)
		* Dispatch shape start point
		*/
		public function pointShape(evt:Point):void
		{
			_shape = evt;
			dispatch(new testEvent(testEvent.SHAPE));
			
		}
		/** 
		 * The horizontal and vertical update point (x,y)
		 * Dispatch shapeupdate
		 */
		public function mousePoint(evt:Point):void
		{
			test.setShape(evt);
			dispatch(new testEvent(testEvent.SHAPEUPDATE));
			
		}
		/** 
		 * Return distances of point (x,y)
		 */
		public function get shapePoint():Point
		{
			return _shape;
		}

		/** 
		 * Return point (x,y) moving mouse
		 */
		public function get mPoint():Point
		{
			return test.getShape();
		}
		
		
	}
}