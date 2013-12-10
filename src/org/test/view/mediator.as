package org.test.view
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	import org.test.event.testEvent;
	import org.test.model.model;

	public class mediator extends Mediator
	{
		
		[Inject]
		public var view:panelView;
		[Inject]
		public var _model:model;
		
		public var mouseHolding:Boolean = false;
		
		public function mediator()
		{
		}
		override public function onRegister():void
		{
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_DOWN,addShape);
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_MOVE,changeShape);
			eventMap.mapListener(view.drawCanvas,MouseEvent.MOUSE_UP,stopCreateShape);			
			
			eventMap.mapListener(eventDispatcher,testEvent.SHAPE,addShapeEvent);
			eventMap.mapListener(eventDispatcher,testEvent.SHAPEUPDATE,addShapeMouseEvent);

		}
		
		private function addShapeMouseEvent(e:testEvent):void
		{
			// TODO Auto Generated method stub
			
			view.myDrawing.graphics.lineTo(_model.mPoint.x,_model.mPoint.y);
			
		}
		
		private function addShapeEvent(e:testEvent):void
		{
			// TODO Auto Generated method stub
			view.myDrawing.graphics.moveTo(_model.shapePoint.x,_model.shapePoint.y);

		}
		
		private function stopCreateShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			mouseHolding = false;

		}
		
		private function changeShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			if (mouseHolding)
			{
			_model.mousePoint(new Point(e.localX,e.localY));
			}
		}
		
		private function addShape(e:MouseEvent):void
		{
			// TODO Auto Generated method stub
			mouseHolding = true;
			_model.pointShape(new Point(e.localX,e.localY));
		}
		
	}
}