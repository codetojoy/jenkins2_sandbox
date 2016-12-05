
package net.codetojoy;

import org.junit.*;
import static org.junit.Assert.*;

public class GreeterTestCase {
    @Test
    public void testGreeting_Null() {
        Greeter greeter = new Greeter();

        // test
        String result = greeter.greet(null);

        assertEquals(Greeter.HELLO, result);
    }
}
