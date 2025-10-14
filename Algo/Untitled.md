# Przykładowe Programy

## Pierwszy program w CPP

```cpp
#include <iostream>

// Krotki komentarz

using namespace std;

int main() {
    /*
    To

    jest

    dlugi komentarz
    1234
    */

    // Opis kodu
    cout << "hello" << endl;

    return 0;

}
```

## Arytmetyka

```cpp
#include <iostream>

using namespace std;

int liczba_calkowita = 4;
int a = 34;
int b = 14;

float liczba_zmiennoprzecinkowa = 3.14;
float x = 0.0;
float y = 1.234;

// inny typ na liczby z przecinkiem
double liczba_rzeczywista = 31415.123;

bool prawda = true;
bool falsz = false;


int main() {

    cout << a + b << endl;

    cout << a - b << endl;

    cout << a * b << endl;

    cout << a / b << endl;

    // cout << a / 0 << endl; // blad!

    float int_plus_float = a + y;
    cout << int_plus_float << endl; // co sie stalo?

    // logiczne `lub`
    bool p = true || false;
    cout << p <<endl;

    // logiczne `oraz`
    p = true && false;
    cout << p << endl;

    // modulo:
    cout << 17%5 << endl;

    cout << (-17)%5 << endl; // !!!
}
```

## Wczytywanie

```cpp
#include <iostream>

using namespace std;

int main() {

    int user_number;

    cin >> user_number;

    cout << "Twoja liczba to " << user_number << endl;

}
```

Autor strony: Jan Roguwski