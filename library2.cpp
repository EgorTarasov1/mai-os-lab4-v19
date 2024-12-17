#include <windows.h>
#include <vector>

extern "C" __declspec(dllexport) int PrimeCount(int A, int B) {
    if (B < 2) return 0;

    std::vector<bool> isPrime(B + 1, true);
    isPrime[0] = isPrime[1] = false;

    for (int i = 2; i * i <= B; i++) {
        if (isPrime[i]) {
            for (int j = i * i; j <= B; j += i) {
                isPrime[j] = false;
            }
        }
    }

    int count = 0;
    for (int i = A; i <= B; i++) {
        if (isPrime[i]) count++;
    }
    return count;
}

extern "C" __declspec(dllexport) float Square(float A, float B) {
    return 0.5f * A * B; 
}