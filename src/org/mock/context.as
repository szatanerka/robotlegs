/**
 * contextClass.
 */
package org.mock
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.mvcs.Context;
	import org.mock.model.Model;
	import org.mock.view.panelMediator;
	import org.mock.view.panelView;
	
	public class context extends Context
	{
		public function context(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super();
		}
		/**
		 * ovveride robotlegs Context startup.
		 * Create structure to fireup.
		 */
		override public function startup():void
		{
			injector.mapSingleton(Model);
			mediatorMap.mapView(panelView,panelMediator);
			super.startup();
		}
	}
}