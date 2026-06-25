package com.example;

import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;

public class AAATest {

    Calculator c;

    @BeforeEach
    void setup() {
        c = new Calculator();
        System.out.println("Setup executed");
    }

    @AfterEach
    void teardown() {
        System.out.println("Teardown executed");
    }

    @Test
    void testAddition() {

        // Arrange
        int a = 2;
        int b = 3;

        // Act
        int result = c.add(a, b);

        // Assert
        assertEquals(5, result);
    }
}