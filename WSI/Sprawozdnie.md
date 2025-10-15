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

| Parametr  | min         | śr          | std         | max         |
| --------- | ----------- | ----------- | ----------- | ----------- |
| mu=5      | $3.91*10^3$ | $3.91*10^3$ | $3.91*10^3$ | $3.91*10^3$ |
| mu=10     | $2.49*10^3$ | $2.49*10^3$ | $2.49*10^3$ | $2.49*10^3$ |
| **mu=15** | $6.36*10^2$ | $6.36*10^2$ | $6.36*10^2$ | $6.36*10^2$ |
| mu=30     | $9.64*10^2$ | $9.64*10^2$ | $9.64*10^2$ | $9.64*10^2$ |
| mu=40     | $9.80*10^2$ | $9.80*10^2$ | $9.80*10^2$ | $9.80*10^2$ |

Widać że relatwywnie niski parametr MU działa o wiele lepiej niż wysokie MU. MU=15 i MU = 10 łatwo pokonuje siodła i wychodzi z minimów lokalnych, dzięki czemu średni koszt jest niski.

Algorytm ewolucyjny z mu=40 jest bardziej podatny na popadanie w lokalne minima, co odwzorywuje wysoki średni wynik, lecz niskim minimum gdy algorytm zaczne w okolicy globalnego minimum.

Zbyt niskie MU, na przykład MU = 5, prowadzi do słabego wybadania okolicy minimum, przez co wyniki algorytmu ewolucyjnego są gorszej jakości.

Optymalny parametr MU dla tej funkcji wynosi około 10.

### Funkcjia f13


N = 50
MU = 0.05


| Parametr      | min         | śr          | std         | max         |
| ------------- | ----------- | ----------- | ----------- | ----------- |
| mu=5.000      | $6.60*10^3$ | $6.60*10^3$ | $6.60*10^3$ | $6.60*10^3$ |
| **mu=10.000** | $2.56*10^3$ | $2.56*10^3$ | $2.56*10^3$ | $2.56*10^3$ |
| mu=15.000     | $3.18*10^3$ | $3.18*10^3$ | $3.18*10^3$ | $3.18*10^3$ |
| mu=30.000     | $3.25*10^3$ | $3.25*10^3$ | $3.25*10^3$ | $3.25*10^3$ |
| mu=50.000     | $1.70*10^3$ | $1.70*10^3$ | $1.70*10^3$ | $1.70*10^3$ |

Optymalny parametr MU dla tej funkcji wynosi około 200.


# Badanie wpływu parametru mutacji


# Funkcja f2

N=100
MU = 10

| Parametr  | min        | śr         | std        | max        |
| --------- | ---------- | ---------- | ---------- | ---------- |
| mul=0.050 | $5.67*10^8$ | $5.67*10^8$ | $5.67*10^8$ | $5.67*10^8$ |
| mul=0.100 | $3.92*10^4$ | $3.92*10^4$ | $3.92*10^4$ | $3.92*10^4$ |
| mul=0.500 | $2.81*10^2$ | $2.81*10^2$ | $2.81*10^2$ | $2.81*10^2$ |
| **mul=1.000** | $7.88*10^2$ | $7.88*10^2$ | $7.88*10^2$ | $7.88*10^2$ |
| mul=2.000 | $9.09*10^4$ | $9.09*10^4$ | $9.09*10^4$ | $9.09*10^4$ |

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
