#include <stdio.h>

void display_username(const char* username) {
    printf("Welcome, %s!\n", username);
}

void display_weather(const char* location) {
    printf("Weather in %s: Sunny, 25°C\n", location);
}

int main() {
    display_username("User123");
    display_weather("Warsaw");
    printf("Your apps will be displayed here.\n");
    return 0;
}
