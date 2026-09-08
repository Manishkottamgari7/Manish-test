@IsTest
private class AdditionTest_Test {
    @IsTest
    static void testAdd() {
        Integer result = AdditionTest.add(2, 3);
        System.assertEquals(5, result);
    }
}