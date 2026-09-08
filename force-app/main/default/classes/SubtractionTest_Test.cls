@IsTest
private class SubtractionTest_Test {
    @IsTest
    static void testSubtract() {
        Integer result = SubtractionTest.subtract(10, 4);
        System.assertEquals(6, result);
    }
}