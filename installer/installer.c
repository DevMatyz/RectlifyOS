#include <stdio.h>

void show_welcome_message() {
    printf("Welcome to Rectlify OS\n");
    printf("1. Install\n");
    printf("2. Try\n");
}

int main() {
    show_welcome_message();
    int choice;
    scanf("%d", &choice);

    if (choice == 1) {
        printf("Starting installation...\n");
    } else if (choice == 2) {
        printf("Booting into live mode...\n");
    } else {
        printf("Invalid choice.\n");
    }

    return 0;
}
