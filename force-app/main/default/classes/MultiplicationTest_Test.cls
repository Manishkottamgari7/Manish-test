@IsTest
private class MultiplicationTest_Test {
    @IsTest
    static void testMultiply() {
        Integer result = MultiplicationTest.multiply(2, 3);
        System.assertEquals(6, result);
    }
}