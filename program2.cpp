#include <iostream>
#include <windows.h>

typedef int (*PrimeCountFunc)(int, int);
typedef float (*SquareFunc)(float, float);

int main() {
    HMODULE hLib = nullptr;
    PrimeCountFunc PrimeCount = nullptr;
    SquareFunc Square = nullptr;
    int currentLibrary = 1;

    hLib = LoadLibrary("liblibrary1.dll");
    if (!hLib) {
        std::cerr << "Failed to load library1.dll" << std::endl;
        return 1;
    }
    PrimeCount = (PrimeCountFunc)GetProcAddress(hLib, "PrimeCount");
    Square = (SquareFunc)GetProcAddress(hLib, "Square");

    int choice;
    while (true) {
        std::cout << "Enter a command (0, 1, or 2): ";
        std::cin >> choice;

        if (choice == 0) {
            FreeLibrary(hLib);
            currentLibrary = (currentLibrary == 1) ? 2 : 1;
            hLib = LoadLibrary(currentLibrary == 1 ? "liblibrary1.dll" : "liblibrary2.dll");
            if (!hLib) {
                std::cerr << "Failed to load the library" << std::endl;
                return 1;
            }
            PrimeCount = (PrimeCountFunc)GetProcAddress(hLib, "PrimeCount");
            Square = (SquareFunc)GetProcAddress(hLib, "Square");
            std::cout << "Switched to " << (currentLibrary == 1 ? "library1.dll" : "library2.dll") << std::endl;
        } else if (choice == 1) {
            int A, B;
            std::cout << "Enter A and B to count prime numbers: ";
            std::cin >> A >> B;
            std::cout << "Number of primes: " << PrimeCount(A, B) << std::endl;
        } else if (choice == 2) {
            float A, B;
            std::cout << "Enter sides A and B: ";
            std::cin >> A >> B;
            std::cout << "Area: " << Square(A, B) << std::endl;
        } else {
            break;
        }
    }

    FreeLibrary(hLib);
    return 0;
}