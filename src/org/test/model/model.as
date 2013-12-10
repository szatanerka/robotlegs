package org.test.model
{
	import flash.events.EventDispatcher;
	import flash.geom.Point;
	
	import org.mock.Red5Test;
	import org.robotlegs.mvcs.Actor;
	import org.test.event.testEvent;
	
	public class model extends Actor
	{
		private var _shape:Point ;
		//private var _mouse:Point;
		private var test:Red5Test = new Red5Test();
		public function model()
		{
		}
		
		public function pointShape(evt:Point):void
		{
			_shape = evt;
			dispatch(new testEvent(testEvent.SHAPE));
			
		}
		public function mousePoint(evt:Point):void
		{
			//_mouse = evt;
			test.setShape(evt);
			dispatch(new testEvent(testEvent.SHAPEUPDATE));
			
		}
		public function get shapePoint():Point
		{
			return _shape;
		}
		public function get mPoint():Point
		{
			return test.getShape();
		}
		
		
	}
}