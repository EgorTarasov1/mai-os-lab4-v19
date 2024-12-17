#ifndef LIBRARY1_H
#define LIBRARY1_H

#ifdef _WIN32
    #ifdef BUILDING_DLL
        #define DLL_EXPORT __declspec(dllexport)
    #else
        #define DLL_EXPORT __declspec(dllimport)
    #endif
#else
    #define DLL_EXPORT
#endif

extern "C" DLL_EXPORT int PrimeCount(int A, int B);
extern "C" DLL_EXPORT float Square(float A, float B);

#endif 