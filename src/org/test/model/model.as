//model class
package org.test.model
{
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	
	import org.mock.Red5Test;
	import org.robotlegs.mvcs.Actor;
	import org.test.event.testEvent;
	
	public class Model extends Actor
	{
		private var _shape:Point ;
		//private var _mouse:Point;
		private var test:Red5Test = new Red5Test();
		public function Model()
		{
		}
		//start Point and dispatcher
		public function pointShape(evt:Point):void
		{
			_shape = evt;
			dispatch(new testEvent(testEvent.SHAPE));
			
		}
		//update Point and dispatcher
		public function mousePoint(evt:Point):void
		{
			test.setShape(evt);
			dispatch(new testEvent(testEvent.SHAPEUPDATE));
			
		}
		//return start Point
		public function get shapePoint():Point
		{
			return _shape;
		}
		//return new mouse move Point
		public function get mPoint():Point
		{
			return test.getShape();
		}
		
		
	}
}