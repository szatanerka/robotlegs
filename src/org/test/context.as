//start class
package org.test
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	import org.test.model.Model;
	import org.test.view.panelMediator;
	import org.test.view.panelView;
	
	public class context extends Context
	{
		public function context(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super();
		}
		override public function startup():void
		{
			injector.mapSingleton(Model);
			mediatorMap.mapView(panelView,panelMediator);
			super.startup();
		}
	}
}