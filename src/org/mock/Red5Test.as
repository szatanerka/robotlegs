//mock red5 class to resend value to robotlegs
package org.mock
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
        //return moved mouse Point  			
		public function getShape():Point
		{
	
			return myGreeting.getShape();
			
		}
		//set mouse start Point mouse down
		public function setShape(evt:Point):void
		{
			 myGreeting.setShape(evt);

		}
	}
}

// Inner Class to resend
import flash.geom.Point;

import org.mock.IShape;
import org.mock4as.Mock;

class MockShape extends Mock implements IShape {
	
	private var _shape:Point;

	public function getShape():Point
	{
		return _shape;
	}
	public function setShape(evt:Point):void
	{
		_shape = evt;
	}
	public function setShapeTest(from:uint, to:uint):uint
	{
		record("setShape", from, to);
		return expectedReturnFor("setShape") as uint;
	}
}
    
