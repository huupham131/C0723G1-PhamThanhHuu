package ss3_array_method_java.bai_tap;

import java.util.Arrays;
import java.util.Scanner;

public class DeleteArray {
    public static void main(String[] args) {
        int[] array = {1, 2, 3, 4, 5, 5, 6};
        System.out.println(Arrays.toString(array));
        Scanner sc = new Scanner(System.in);
        System.out.println("Nhập phần tử muốn xoá: ");
        int X = sc.nextInt();
        boolean checkNums = true;
        for (int i = 0; i < array.length; i++) {
            if (array[i] == X) {
                for (int j = i; j < array.length - 1; j++) {
                    array[j] = array[j + 1];
                    checkNums = false;
                }
                array[array.length - 1] = 0;
                i--;
            }
        }
        if (checkNums) {
            System.out.println("Phan tu da nhap ko co trong mang");
        } else {
            System.out.println("Mang sau khi xoa: " + Arrays.toString(array));
        }
    }
}