#include<stdio.h>
#include<limits.h>

void insert(int ary[], int hFn, int size) {
     int element, pos, n = 0;
     printf("Enter key element to insert\n");
     scanf("%d", &element);
     pos = element % hFn;
     while (ary[pos]!= INT_MIN) {
         if (ary[pos] == INT_MAX)
             break;
         pos = (pos + 1) % hFn;
         n++;
         if (n == size) {
             printf("Hash table is full. No place to insert this element.\n");
             return;
         }
     }
     ary[pos] = element;
}

void delete(int ary[], int hFn, int size) {
     int element, pos, n = 0;
     printf("Enter element to delete\n");
     scanf("%d", &element);
     pos = element % hFn;
     while (n++!= size) {
         if (ary[pos] == INT_MIN) {
             printf("Element not found in hash table\n");
             return;
         }
         else if (ary[pos] == element) {
             ary[pos] = INT_MAX;
             printf("Element deleted\n");
             return;
         }
         else {
             pos = (pos + 1) % hFn;
         }
     }
     printf("Element not found in hash table\n");
}

void search(int ary[], int hFn, int size) {
     int