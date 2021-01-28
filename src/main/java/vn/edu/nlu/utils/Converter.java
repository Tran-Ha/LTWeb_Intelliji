package vn.edu.nlu.utils;

import java.text.DecimalFormat;

public class Converter {

    // method
    public static int convertStringToInt(String string) {
        try {
            return Integer.parseInt(string);
        } catch (Exception e){
            return -1;
        }
    }

    public static String convertDoubleToMoneyString(double number) {
        DecimalFormat f = new DecimalFormat();
        return f.format(number);
    }
    public static String convertIntToMoneyString(int number) {
        DecimalFormat f = new DecimalFormat();
        return f.format(number);
    }
    // run test
    public static void main(String[] args) {
        System.out.println("number: " + convertStringToInt("-123"));
    }
}
