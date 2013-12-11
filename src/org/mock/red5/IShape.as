/**
 * This is interface.
 */
package org.mock.red5
{
	import flash.geom.Point;
	public interface IShape
	{
		function getShape():Point;
		function setShape(evt:Point):void;
		function setShapeTest(from:uint, to:uint):uint;

	}
}