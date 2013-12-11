/**
 * Mock class to send and get parametrs to fake mock.
 */
package org.mock.red5
{
    import flexunit.framework.TestCase;
    import flexunit.framework.TestSuite;
        
    import org.mock4as.Mock;
    import flash.geom.Point;

    public class Red5Test extends TestCase
	{
		public var mock:MockShape = new MockShape();
		public var myGreeting:Red5 = new Red5(mock);
		
		public function Red5Test(){
            super();
        }
		/**
		 * Fake mock to return point.
		 */
		public function getShape():Point
		{
	
			return myGreeting.getShape();
			
		}
		/**
		 * Fake mock to set point.
		 */
		public function setShape(evt:Point):void
		{
			 myGreeting.setShape(evt);

		}
	}
}

/**
 * Inner to resend.
 */
import flash.geom.Point;

import org.mock.red5.IShape;
import org.mock4as.Mock;

class MockShape extends Mock implements IShape {
	
	private var _shape:Point;
	/**
	 * Get point.
	 */
	public function getShape():Point
	{
		return _shape;
	}
	/**
	 * Set point.
	 */
	public function setShape(evt:Point):void
	{
		_shape = evt;
	}
	/**
	 * Only for interface.
	 */
	public function setShapeTest(from:uint, to:uint):uint
	{
		record("setShape", from, to);
		return expectedReturnFor("setShape") as uint;
	}
}
    
