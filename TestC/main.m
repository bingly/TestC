//
//  main.m
//  TestC
//
//  Created by bingcai on 16/1/27.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//////**********插入排序************

void insertSort(int a[], int n){

    //****初始版****//
//    int i, j, k;
//    for (i = 1; i < n; i++) {
//        
//        for (j = i - 1; j >= 0; j--) {
//            if (a[i] > a[j]) {   //i比前面的数大，只需要比较一次
//                break;   //后面的数i比前面的数小，则把i插到那个数前面
//            }
//        }
//        
//        if (j != i - 1) {
//            int temp = a[i];
//            for (k = i - 1; k >= j; k--) {
//                a[k + 1] = a[k];
//            }
//            a[j + 1] = temp;
//        }
//    }
    
    //****升级版，边搜索、边移动****//
    int i, j;
    for (i = 1; i < n; i ++) {
        
        if (a[i] < a[i -1]) {
            int temp = a[i];
            
            for (j = i - 1; j >= 0 && a[j] > temp; j--) {
                a[j + 1] = a[j];
            }
            a[j +1] = temp;
        }
    }
}

int main(int argc, char * argv[]) {
    
    int array[] = {32,51,6,17,11,22,4,47 };
    insertSort(array, 8);
    for (int i = 0; i < 8; i++) {
        printf("%d ",array[i]);
    }
    
    return 1;
}

//////**********归并排序************
//
//void mergeArray(int a[], int first, int mid ,int last, int temp[]){
//
//    int i = first, j = mid + 1;
//    int m = mid, n = last;
//    int k = 0;
//    
//    while (i <= m && j <= n) {
//        if (a[i] <= a[j]) {
//            temp[k++] = a[i++];
//        } else
//            temp[k++] = a[j++];
//    }
//    
//    while (i <= m) {
//        temp[k++] = a[i++];
//    }
//    
//    while (j <= n) {
//        temp[k++] = a[j++];
//    }
//
//    for (i = 0; i < k; i++) {
//        a[first + i] = temp[i];
//    }
//}
//
//void mgSort(int a[], int first, int last, int temp[]){
//
//    if (first < last) {
//        int mid = (first + last) / 2;
//        mgSort(a, first, mid, temp);
//        mgSort(a, mid + 1, last, temp);
//        mergeArray(a, first, mid, last, temp);
//    }
//}
//
//BOOL mergeSort(int a[], const int n){
//
//    int temp[8] = {0};
//    int *p = temp;
//    if (p == nil) {
//        return false;
//    }
//    mgSort(a, 0, n, temp);
////    free(p);
////    p = NULL;
//    return true;
//}
//
//int main(int argc, char * argv[]) {
//    
//    int array[] = {32,51,6,17,11,22,4,47 };
//    mergeSort(array, 8);
//    for (int i = 0; i < 8; i++) {
//        printf("%d ",array[i]);
//    }
//    
//    return 1;
//}

////**********快速排序************
//void quickSort(int s[], int l, int r) {
//    
//    int len = r - l + 1;
//    printf("当前数组：");
//    for (int i = 0; i < len; i ++) {
//        printf("%d ", s[i]);
//    }
//    printf("\n");
//
//    if (l < r) {
//        
//        int x = s[l], i = l, j = r;
//        
//        while (i < j) {
//            
//            while (i < j && s[j] > x) {
//                j --;
//            }
//            if (i < j) {
//                s[i++] = s[j];
//            }
//            
//            while (i < j && s[i] < x) {
//                i ++;
//            }
//            if (i < j) {
//                s[j--] = s[i];
//            }
//        }
//
//        s[j] = x;
//        quickSort(s, l, i - 1);
//        quickSort(s, i + 1, r);
//    }
//}
//
//
//int main(int argc, char * argv[]) {
//    
//    int array[] = {32,51,6,17,11,22,4,47 };
//    quickSort(array, 0, 7);
//    for (int i = 0; i < 8; i++) {
//        printf("%d ",array[i]);
//    }
//    
//    return 1;
//}



//////**********二分法查找升级版*************
//int binarySearch(int arrar[], int T, int len) {
//
//    int min, mid ,max;
//    
//    mid = len/2;
//    max = len - 1;
//    min = 0;
//    
//    while (min <= max) {
//        
//        mid = (min + max) / 2;
//        if (arrar[mid] == T) {
//            return mid;
//        } else if (arrar[mid] < T) {
//            min = mid + 1;
//        } else
//            max = mid - 1;
//    }
//    return -1;
//}
//
//int main(int argc, char * argv[]) {
//
//    int array[] = {3,5,6,7,11,22,44,47 };
//    int len = sizeof(array)/sizeof(int);
//    int index = binarySearch(array, 90, len);
//    NSLog(@"位置是：%d", index);
//    
//    return 1;
//}


//#define NUM_COUNT  1000
//
////**********二分法查找*************
//int searchCount = 0, arrMid = 0, arrMin = 0, arrMax = 0;
//
//
//int main(int argc, char * argv[]) {
//    
//    int number[NUM_COUNT] = {0};
////    int target = arc4random() % 10000;
//    int target = 9999;
//    NSLog(@"目标数：%d", target);
//    for (int i = 0; i < NUM_COUNT; i++) {
////        number[i] = arc4random();
//        number[i] = i;
//    }
//    
//    int len = sizeof(number) / sizeof(int);
//    arrMid = len / 2;
//    arrMax = len;
//    
//    while (1) {
//        
//        searchCount ++;
//        NSLog(@"arrMid: %d", arrMid);
//        if (target == number[arrMid]) {
//            NSLog(@"查询次数：%d, 位置：%d", searchCount, arrMid);
//            break;
//        } else if (target > number[arrMid]) {
//            arrMin = arrMid;
//            
//        } else {
//            arrMax = arrMid;
//           
//        }
//        arrMid = (arrMin + arrMax) / 2;
//    }
//    
//    return 1;
//}



//**********函数指针*************
//int sum(int a,int b){
//    return a+b;
//}
//
//int sub(int a,int b){
//    return a-b;
//}
//
////函数指针作为参数进行传递
//int operate(int a,int b,int (*p)(int,int)){
//    return p(a,b);
//}
//
//int main(int argc, char * argv[]) {
//    
//    int a=1,b=2;
//    int (*p)(int ,int)=sum;//函数名就是函数首地址,等价于：int (*p)(int,int);p=sum;
//    int c=p(a,b);
//    printf("a+b=%d\n",c); //结果：a+b=3
//    
//    
//    //函数作为参数传递
//    printf("%d\n",operate(a, b, sum)); //结果：3
//    printf("%d\n",operate(a, b, sub)); //结果：-1
//    
//    return 1;
//}
