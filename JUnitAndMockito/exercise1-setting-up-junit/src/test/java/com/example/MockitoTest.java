package com.example;

import org.junit.jupiter.api.Test;

import java.util.List;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

public class MockitoTest {

    @Test
    void testMockingAndStubbing() {

        List<String> mockList = mock(List.class);

        when(mockList.get(0)).thenReturn("Hello");

        assertEquals("Hello", mockList.get(0));
    }
}
