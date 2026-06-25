package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AssertionsTest {

    Calculator c = new Calculator();

    @Test
    void testAdd() {
        assertEquals(5, c.add(2, 3));
    }

    @Test
    void testSubtract() {
        assertEquals(3, c.subtract(5, 2));
    }

    @Test
    void testNotNull() {
        assertNotNull(c);
    }
}
