package com.example;

import org.junit.jupiter.api.Test;

import java.util.List;

import static org.mockito.Mockito.*;

public class VerifyInteractionTest {

    @Test
    void testVerifyInteraction() {

        List<String> mockList = mock(List.class);

        mockList.add("Java");

        verify(mockList).add("Java");
    }
}