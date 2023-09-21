package Test;

import java.util.Arrays;

public class QuickSort {
    public static void main(String[] args) {
        int[] arr ={-2,10,8,3,12,6,4,5};
        quickSort(arr,0,arr.length-1);
        System.out.println(Arrays.toString(arr));
    }
    public static int partition(int[] arr,int low, int high){
        int pivot = arr[high];
        int i= low -1;
        for (int j = low; j < high; j++) {
            if(arr[j]<=pivot){
                i++;
                int temp = arr[i];
                arr[i]= arr[j];
                arr[j]= temp;
            }
        }
        int temp = arr[i+1];
        arr[i+1]=arr[high];
        arr[high]=temp;
        return i+1;
    }
    public static void quickSort(int[] arr, int low, int high){
        if(low<high){
            int partition = partition(arr,low,high);
            quickSort(arr,low, partition-1);
            quickSort(arr,partition+1,high);
            System.out.println(Arrays.toString(arr));
        }

    }
}
