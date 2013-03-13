#include <cstdio>

int main(){
    char c;
    while ((c = getchar())!=EOF)
        switch (c) {
            case '{':
                printf("@{");
                break;
            case '}':
                printf("@}");
                break;
            case '@':
                printf("@@");
                break;
            default:
                putchar(c);
                break;
        }
}
