// 2. Write a program of to sort the array using templates

#include <iostream>
using namespace std;

template <typename T>
void sortArray(T arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                T temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

template <typename T>
void displayArray(T arr[], int size) {
    for (int i = 0; i < size; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
}

int main() {
    int intArr[] = {5, 2, 9, 1, 5, 6};
    int size = sizeof(intArr) / sizeof(intArr[0]);

    cout << "Before Sorting (int array): ";
    displayArray(intArr, size);

    sortArray(intArr, size);

    cout << "After Sorting (int array): ";
    displayArray(intArr, size);

    double doubleArr[] = {3.5, 2.1, 9.8, 1.6, 5.2, 6.9};
    int doubleSize = sizeof(doubleArr) / sizeof(doubleArr[0]);

    cout << "Before Sorting (double array): ";
    displayArray(doubleArr, doubleSize);

    sortArray(doubleArr, doubleSize);

    cout << "After Sorting (double array): ";
    displayArray(doubleArr, doubleSize);

}
