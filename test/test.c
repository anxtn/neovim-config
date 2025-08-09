#include <stdio.h>
#define VERSION "1.0.0"

// stores the infos about a user
typedef struct {
    const char *name;
    int age;
    double score;
} User;

// prints the user infos to the console
void print_user_info(User *user) {
    printf("User: %s | Age: %d | Score: %.2f\n", user->name, user->age, user->score);

    if (user->score >= 9.0) {
        printf("Status: excellent\n");
    } else if (user->score >= 7.0) {
        printf("Status: good\n");
    } else {
        printf("Status: needs improvement\n");
    }
}

int main(void) {
    User users[] = {{"Alice", 30, 8.6}, {"Bob", 25, 6.9}, {"Charlie", 28, 9.2}};

    size_t user_count = sizeof(users) / sizeof(users[0]);
    printf("App v%s - Processing %zu users\n\n", VERSION, user_count);

    // this is the process
    for (size_t i = 0; i < user_count; ++i) {
        print_user_info(&users[i]);
    }

    return 0;
}
