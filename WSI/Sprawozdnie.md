# Ćwiczenie 1

  

## Polecenie

Zaimplementować klasyczny algorytm ewolucyjny z selekcją turniejową i sukcesją generacyjną, bez krzyżowania. Dostępny budżet to 10000 ewaluacji funkcji celu. Optymalizujemy funkcje numer 2 i 13 z CEC 2017 w 10 wymiarach. Ograniczenia kostkowe przestrzeni to -100, 100.

  
# Badanie wpływu rozmiaru populacji MU

##### Parametry:
UPPER_BOUND = 100
LOWER_BOUND = -100
DIM = 10
T_MAX = 1e4
MUTATION_FACTOR = 0.7


UPPER_BOUND, LOWER_BOUND - ograniczenie kostkowe
DIM - wymiarowość osobnika
MU = rozmiar populacji
N = liczba uruchomień algorytmu ewolucyjnego


N = 50
### Funkcja f2

| Parametr | min           | śr            | std           | max              |
| -------- | ------------- | ------------- | ------------- | ---------------- |
| mu=5     | $1,71 * 10^3$ | $3,09 10^4$   | $1,0 * 10^5$  | $7,21 * 10^5$    |
| mu=10    | $3,5 * 10^2$  | $5,8 * 10^3$  | $5,9 * 10^3$  | $2,7 * 10^4$     |
| mu=15    | $3,4* 10^2$   | $6,6 * 10^4$  | $3,20 * 10^4$ | $1,46 * 10^6$    |
| mu=40    | $3,30 * 10^2$ | $9,05 * 10^9$ | $2,27 * 10^9$ | $4,85 * 10^{10}$ |
|          |               |               |               |                  |

Widać że relatwywnie niski parametr MU działa o wiele lepiej niż wysokie MU. MU=15 i MU = 10 łatwo pokonuje siodła i wychodzi z minimów lokalnych, dzięki czemu średni koszt jest niski.

Algorytm ewolucyjny z mu=40 jest bardziej podatny na popadanie w lokalne minima, co odwzorywuje wysoki średni wynik, lecz niskim minimum gdy algorytm zaczne w okolicy globalnego minimum.

Zbyt niskie MU, na przykład MU = 5, prowadzi do słabego wybadania okolicy minimum, przez co wyniki algorytmu ewolucyjnego są gorszej jakości.

Optymalny parametr MU dla tej funkcji wynosi około 10.

### Funkcjia f13


N = 50

| Parametr | min         | śr          | std         | max         |
| -------- | ----------- | ----------- | ----------- | ----------- |
| mu = 2   | $9.42*10^5$ | $6.70*10^7$ | $1.11*10^8$ | $6.72*10^8$ |
| mu = 3   | $6.66*10^5$ | $1.82*10^7$ | $1.89*10^7$ | $1.00*10^8$ |
| mu = 4   | $3.31*10^5$ | $7.89*10^6$ | $9.65*10^6$ | $5.84*10^7$ |
| mu = 5   | $1.95*10^5$ | $5.88*10^6$ | $5.38*10^6$ | $2.77*10^7$ |
| mu = 10  | $8.14*10^4$ | $2.67*10^6$ | $3.39*10^6$ | $2.00*10^7$ |
| mu = 15  | $5.99*10^4$ | $1.62*10^6$ | $1.74*10^6$ | $1.04*10^7$ |
| mu = 40  | $3.32*10^4$ | $5.81*10^5$ | $4.56*10^5$ | $1.68*10^6$ |
| mu = 80  | $1.36*10^4$ | $3.00*10^5$ | $2.52*10^5$ | $1.00*10^6$ |
| mu = 120 | $1.29*10^4$ | $1.75*10^5$ | $1.64*10^5$ | $7.38*10^5$ |
| mu = 150 | $4.32*10^3$ | $1.55*10^5$ | $1.36*10^5$ | $5.87*10^5$ |
| mu = 180 | $7.84*10^3$ | $1.43*10^5$ | $1.19*10^5$ | $5.31*10^5$ |
| mu = 200 | $1.16*10^4$ | $1.17*10^5$ | $8.74*10^4$ | $4.18*10^5$ |
| mu = 250 | $6.86*10^3$ | $9.73*10^4$ | $7.85*10^4$ | $3.19*10^5$ |
| mu = 300 | $9.17*10^3$ | $8.53*10^4$ | $8.32*10^4$ | $5.09*10^5$ |

Optymalny parametr MU dla tej funkcji wynosi około 200.


# Badanie wpływu parametru mutacji


# Funkcja f2

N=100
MU = 10

| Parametr  | min        | śr         | std        | max        |
| --------- | ---------- | ---------- | ---------- | ---------- |
| mul=0.001 | $2.24e+08$ | $2.24e+08$ | $2.24e+08$ | $2.24e+08$ |
| mul=0.005 | $3.86e+03$ | $3.86e+03$ | $3.86e+03$ | $3.86e+03$ |
| mul=0.010 | $5.29e+03$ | $5.29e+03$ | $5.29e+03$ | $5.29e+03$ |
| mul=0.050 | $3.58e+03$ | $3.58e+03$ | $3.58e+03$ | $3.58e+03$ |
| mul=0.100 | $4.57e+03$ | $4.57e+03$ | $4.57e+03$ | $4.57e+03$ |
| mul=0.500 | $1.32e+04$ | $1.32e+04$ | $1.32e+04$ | $1.32e+04$ |

# Funkcja f13

N=40
MU = 10

| Parametr      | min        | śr         | std        | max        |
| ------------- | ---------- | ---------- | ---------- | ---------- |
| mul=0.001     | $2.24e+08$ | $2.24e+08$ | $2.24e+08$ | $2.24e+08$ |
| mul=0.005     | $3.86e+03$ | $3.86e+03$ | $3.86e+03$ | $3.86e+03$ |
| mul=0.010     | $5.29e+03$ | $5.29e+03$ | $5.29e+03$ | $5.29e+03$ |
| **mul=0.050** | $3.58e+03$ | $3.58e+03$ | $3.58e+03$ | $3.58e+03$ |
| mul=0.100     | $4.57e+03$ | $4.57e+03$ | $4.57e+03$ | $4.57e+03$ |
| mul=0.500     | $1.32e+04$ | $1.32e+04$ | $1.32e+04$ | $1.32e+04$ |
