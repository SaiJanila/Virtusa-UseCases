import java.util.Scanner;

public class PasswordValidator {
    public static boolean ValidPassword(String password) {
        boolean hasUpperCase = false;
        boolean hasDigit = false;

        if (password.length() < 8) {
            System.out.println("Password is too short, Minimum 8 charaters are required");
        }

        for (int i = 0; i < password.length(); i++) {
            char ch = password.charAt(i);
            if (Character.isUpperCase(ch)) {
                hasUpperCase = true;
            }
            if (Character.isDigit(ch)) {
                hasDigit = true;
            }
        }
        if (!hasUpperCase && !hasDigit) {
            System.out.println("UpperCase and Digit are missing");
            return false;
        }
        if (!hasUpperCase) {
            System.out.println("UpperCase letter is missing");
            return false;
        }
        if (!hasDigit) {
            System.out.println("Digit is missing");
            return false;
        }
        if (hasUpperCase && hasDigit) {
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String password;
        System.out.println("Enter password");
        password = sc.nextLine();
        if (ValidPassword(password)) {
            System.out.println("Your password is valid");
        } else {
            System.out.println("Change and retry your password");
        }
        sc.close();
    }
}
