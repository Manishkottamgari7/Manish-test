@IsTest
private class StringLengthCheckerTest {
    @IsTest
    static void testGetLength() {
        System.assertEquals(5, StringLengthChecker.getLength('Hello'));
        System.assertEquals(0, StringLengthChecker.getLength(null));
    }
}