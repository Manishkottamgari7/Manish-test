@IsTest
private class DivisionTest_Test {
    @IsTest
    static void testDivide() {
        Decimal result = DivisionTest.divide(10, 2);
        System.assertEquals(5, result);
    }
}