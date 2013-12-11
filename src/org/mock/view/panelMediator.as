/**
 * Mediator class comunication panelView and Model.
 */
package org.mock.view
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	import org.mock.event.testEvent;
	import org.mock.model.Model;

	public class panelMediator extends Mediator
	{
		
		[Inject]
		public var view:panelView;
		[Inject]
		public var _model:Model;
		
		public var mouseHolding:Boolean = false;
		
		public function panelMediator()
		{
		}
		/**
		 * @ovveride modeiator.
		 * start eventMap listener for MouseEvent and custom testEvent
		 */
		override public function onRegister():void
		{
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_DOWN,addShape);
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_MOVE,updateShape);
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_UP,stopCreateShape);			
			
			eventMap.mapListener(eventDispatcher,testEvent.SHAPE,addShapeEvent);
			eventMap.mapListener(eventDispatcher,testEvent.SHAPEUPDATE,addShapeMouseEvent);

		}
		/**
		 * Mouse move point to red5.
		 */
		private function addShapeMouseEvent(e:testEvent):void
		{
			// TODO Auto Generated method stub
			
			view.myDrawing.graphics.lineTo(_model.mPoint.x,_model.mPoint.y);
			
		}

		/**
		 * Mouse start point to red5.
		 */
		private function addShapeEvent(e:testEvent):void
		{
			// TODO Auto Generated method stub
			view.myDrawing.graphics.moveTo(_model.shapePoint.x,_model.shapePoint.y);

		}
		/**
		 * Mouse up stop drawing.
		 */
		private function stopCreateShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			mouseHolding = false;

		}
		/**
		 * Mouse move start create line.
		 */
		private function updateShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			if (mouseHolding)
			{
			_model.mousePoint(new Point(e.localX,e.localY));
			}
		}
		/**
		 * Mouse down start point is send.
		 */
		private function addShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			mouseHolding = true;
			_model.pointShape(new Point(e.localX,e.localY));
		}
		
	}
}