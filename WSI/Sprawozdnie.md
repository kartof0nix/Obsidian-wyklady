# Ćwiczenie 1

  

## Polecenie

Zaimplementować klasyczny algorytm ewolucyjny z selekcją turniejową i sukcesją generacyjną, bez krzyżowania. Dostępny budżet to 10000 ewaluacji funkcji celu. Optymalizujemy funkcje numer 2 i 13 z CEC 2017 w 10 wymiarach. Ograniczenia kostkowe przestrzeni to -100, 100.

  
# Badanie rozmiaru populacji MU

##### Parametry:
UPPER_BOUND = 100
LOWER_BOUND = -100
DIM = 10
T_MAX = 1e4


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

### Funkcja f13


Widać że relatwywnie niski parametr MU działa o wiele lepiej niż wysokie MU. MU=15 i MU = 10 łatwo pokonuje siodła i wychodzi z minimów lokalnych, dzięki czemu średni koszt jest niski.

Algorytm ewolucyjny z mu=40 jest bardziej podatny na popadanie w lokalne minima, co odwzorywuje wysoki średni wynik, lecz niskim minimum gdy algorytm zaczne w okolicy globalnego minimum.

Zbyt niskie MU, na przykład MU = 5, prowadzi do słabego wybadania okolicy minimum, przez co wyniki algorytmu ewolucyjnego są gorszej jakości.

Optymalny parametr MU dla wynosi około 10.



