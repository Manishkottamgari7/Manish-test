public class StringLengthChecker {
    public static Integer getLength(String value) {
        if (value == null) {
            return 0;
        }
        return value.length();
    }
}