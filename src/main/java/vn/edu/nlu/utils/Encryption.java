package vn.edu.nlu.utils;

public class Encryption {
    // methods
    public static int encrypt(String origin) {
        int result = 0;
        for (Character character : origin.toCharArray()) {
            result += (int) (character * character + 5 * character - 1);
        }
        return result;
    }
    // run test
    public static void main(String[] args) {
        System.out.println(encrypt("123"));
        System.out.println(encrypt("1234"));
        System.out.println(encrypt("letanphat"));
        System.out.println(encrypt("chanquadi"));
        System.out.println(encrypt("haixzz chan"));

        System.out.println("so sanh: " + (encrypt("123") == encrypt("123")));
        System.out.println("so sanh: " + (encrypt("123") == encrypt("1234")));
        System.out.println("so sanh: " + (encrypt("123") == encrypt("")));
        System.out.println("so sanh: " + (encrypt("letanphat") == encrypt("123")));
        System.out.println("so sanh: " + (encrypt("haizz") == encrypt("chan qua di")));
    }
}
