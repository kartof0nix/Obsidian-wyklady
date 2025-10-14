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

| Parametr | min         | śr          | std         | max         |
| -------- | ----------- | ----------- | ----------- | ----------- |
| mul= 0.01 | $7.93*10^9$ | $1.13*10^{18}$ | $7.33*10^{18}$ | $5.24*10^{19}$ |
| mul= 0.05 | $1.94*10^8$ | $1.44*10^{16}$ | $6.98*10^{16}$ | $4.95*10^{17}$ |
| mul= 0.10 | $1.60*10^5$ | $3.54*10^{14}$ | $1.58*10^{15}$ | $1.07*10^{16}$ |
| mul= 0.50 | $2.66*10^2$ | $6.58*10^4$ | $3.93*10^5$ | $2.82*10^6$ |
| **mul= 1.00** | $1.72*10^3$ | $3.39*10^4$ | $3.70*10^4$ | $1.70*10^5$ |
| mul= 2.00 | $1.65*10^4$ | $2.65*10^6$ | $3.79*10^6$ | $1.78*10^7$ |
| mul= 5.00 | $4.87*10^7$ | $4.45*10^9$ | $1.11*10^{10}$ | $7.02*10^{10}$ |
| mul= 10.00 | $3.33*10^9$ | $8.27*10^{11}$ | $2.03*10^{12}$ | $9.75*10^{12}$ |

# Funkcja f13

N=100
MU = 10

| Parametr | min         | śr          | std         | max         |
| -------- | ----------- | ----------- | ----------- | ----------- |
| mul= 0.01 | $5.72*10^3$ | $9.76*10^9$ | $1.02*10^{10}$ | $6.45*10^{10}$ |
| mul= 0.05 | $2.75*10^3$ | $9.75*10^8$ | $2.68*10^9$ | $1.92*10^{10}$ |
| **mul= 0.10** | $5.15*10^3$ | $6.50*10^4$ | $5.97*10^4$ | $3.90*10^5$ |
| mul= 0.50 | $5.71*10^4$ | $1.04*10^6$ | $1.01*10^6$ | $4.53*10^6$ |
| mul= 1.00 | $1.30*10^5$ | $5.86*10^6$ | $5.78*10^6$ | $2.41*10^7$ |
| mul= 2.00 | $8.86*10^4$ | $1.90*10^7$ | $2.79*10^7$ | $2.10*10^8$ |
| mul= 5.00 | $2.53*10^6$ | $1.27*10^8$ | $1.26*10^8$ | $6.81*10^8$ |
