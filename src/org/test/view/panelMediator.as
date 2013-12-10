//panel mediator 
package org.test.view
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	import org.test.event.testEvent;
	import org.test.model.Model;

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
		//register map listener
		override public function onRegister():void
		{
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_DOWN,addShape);
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_MOVE,updateShape);
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_UP,stopCreateShape);			
			
			eventMap.mapListener(eventDispatcher,testEvent.SHAPE,addShapeEvent);
			eventMap.mapListener(eventDispatcher,testEvent.SHAPEUPDATE,addShapeMouseEvent);

		}
		//mouse move point from red5
		private function addShapeMouseEvent(e:testEvent):void
		{
			// TODO Auto Generated method stub
			
			view.myDrawing.graphics.lineTo(_model.mPoint.x,_model.mPoint.y);
			
		}
		//mouse start point from red5
		private function addShapeEvent(e:testEvent):void
		{
			// TODO Auto Generated method stub
			view.myDrawing.graphics.moveTo(_model.shapePoint.x,_model.shapePoint.y);

		}
		//mouse up stop draw lines
		private function stopCreateShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			mouseHolding = false;

		}
		//mouse move start create line and send to red5
		private function updateShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			if (mouseHolding)
			{
			_model.mousePoint(new Point(e.localX,e.localY));
			}
		}
		//mouse down set start Point
		private function addShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			mouseHolding = true;
			_model.pointShape(new Point(e.localX,e.localY));
		}
		
	}
}