@IsTest
private class EvenNumberCheckerTest {
    @IsTest
    static void testIsEven() {
        System.assertEquals(true, EvenNumberChecker.isEven(8));
        System.assertEquals(false, EvenNumberChecker.isEven(7));
    }
}