package org.mock
{
	import flash.geom.Point;
//interface form my test package
	public interface IShape
	{
		function getShape():Point;
		function setShape(evt:Point):void;
		function setShapeTest(from:uint, to:uint):uint;

	}
}