/**
 * Mock class to set and get Point of mouse.
 */
package org.mock.red5
{
	import flash.geom.Point;

	public class Red5
	{
		private var _xandy:IShape;
		private var _shape:Point;
		
		public function Red5(_x:IShape){
			this._xandy = _x;
		}  
		/**
		 * Return mouse point.
		 */
		public function getShape():Point
		{
			return _shape;
		}
		/**
		 * Start mouse point.
		 */
		public function setShape(evt:Point):void
		{
			_shape = evt;
		}
		/**
		 * For test mock.
		 */
		public function sayHelloXandY(x:uint, y:uint):uint{
			return _xandy.setShapeTest( x, y);
		}
	}
}