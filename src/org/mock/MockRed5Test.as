package org.mock
{
	import flash.geom.Point;
	
	import flexunit.framework.TestCase;
	import flexunit.framework.TestSuite;
	
	import org.mock4as.Mock;
	
	public class MockRed5Test extends TestCase
	{
		public function MockRed5Test(){
			super();
		}
		
		
		public function testShapeBehavior():void{
			// create the mock
			var mock:MockTranslator = new MockTranslator();
			// set expectations
			mock.expects("setShapeTest").withArgs(0,0).willReturn(0);
			// inject the mock			
			var myGreeting:Red5 = new Red5(mock);
			// execute and assert on greetign and 
			assertEquals(0,myGreeting.sayHelloXandY(0, 0));
			// verify mock behavior
			assertTrue(mock.errorMessage(), mock.success());
		}  	
	}
}

// Inner Class
import flash.geom.Point;

import org.mock.IShape;
import org.mock4as.Mock;

class MockTranslator extends Mock implements IShape {
	
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
		record("setShapeTest", from, to);
		return expectedReturnFor("setShapeTest") as uint;
	}
	
}

