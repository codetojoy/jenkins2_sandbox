
package net.codetojoy;

import java.util.*;

// silly class to use as an illustration

public class Greeter {
    public static final String VERSION = "0.9";

    protected static final String HELLO = "Hello";
    protected static final String NICE_DAY = "Nice day, eh?";
    protected static final String CA_VA = "Ça va ?";
    
    public String greet(Locale locale) {
        String result = HELLO;

        if (Locale.CANADA.equals(locale)) {
            result = NICE_DAY;
        } else if (Locale.CANADA_FRENCH.equals(locale)) {
            result = CA_VA;
        }

        return result;
    }
}
