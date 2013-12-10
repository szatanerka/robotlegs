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
	
		public function getShape():Point
		{
			return _shape;
		}
		public function setShape(evt:Point):void
		{
			_shape = evt;
		}
		public function sayHelloXandY(x:uint, y:uint):uint{
			return _xandy.setShapeTest( x, y);
		}
	}
}