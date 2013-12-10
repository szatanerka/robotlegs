package org.test
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	import org.test.model.model;
	import org.test.view.mediator;
	import org.test.view.panelView;
	
	public class context extends Context
	{
		public function context(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super();
		}
		override public function startup():void
		{
			injector.mapSingleton(model);
			mediatorMap.mapView(panelView,mediator);
			super.startup();
		}
	}
}