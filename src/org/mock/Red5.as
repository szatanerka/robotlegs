//My simple mock class to set end get Point of mouse
package org.mock
{
	import flash.geom.Point;

	public class Red5
	{
		private var _xandy:IShape;
		private var _shape:Point;
		
		public function Red5(_x:IShape){
			this._xandy = _x;
		}  
	//return moved point
		public function getShape():Point
		{
			return _shape;
		}
	//set start point
		public function setShape(evt:Point):void
		{
			_shape = evt;
		}
	//to mock test class simple test value
		public function sayHelloXandY(x:uint, y:uint):uint{
			return _xandy.setShapeTest( x, y);
		}
	}
}