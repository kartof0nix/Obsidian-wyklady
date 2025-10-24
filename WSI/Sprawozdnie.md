# Ćwiczenie 1

  

## Polecenie

Zaimplementować klasyczny algorytm ewolucyjny z selekcją turniejową i sukcesją generacyjną, bez krzyżowania. Dostępny budżet to 10000 ewaluacji funkcji celu. Optymalizujemy funkcje numer 2 i 13 z CEC 2017 w 10 wymiarach. Ograniczenia kostkowe przestrzeni to -100, 100,

  


##### Parametry:
UPPER_BOUND = 100
LOWER_BOUND = -100
DIM = 10
T_MAX = 1e4
MUTATION_FACTOR = 0,7


UPPER_BOUND, LOWER_BOUND - ograniczenie kostkowe
DIM - wymiarowość osobnika
MU = rozmiar populacji
N = liczba uruchomień algorytmu ewolucyjnego

# Badanie wpływu rozmiaru populacji MU

### Funkcja f2

N = 60
$\sigma = 0,5$

|         Parametr |              min |               śr |              std |              max | 
| ---------------- | ---------------- | ---------------- | ---------------- | ---------------- |
|          mu=   3 |       $4,58e+02$ |       $1,44e+05$ |       $9,61e+05$ |       $7,52e+06$ |
|      **mu=   5** |       $2,36e+02$ |       $5,22e+03$ |       $5,40e+03$ |       $2,84e+04$ |
|          mu=   8 |       $2,52e+02$ |       $6,68e+03$ |       $1,39e+04$ |       $1,03e+05$ |
|          mu=  10 |       $2,88e+02$ |       $1,23e+05$ |       $4,97e+05$ |       $3,27e+06$ |
|          mu=  15 |       $2,49e+02$ |       $4,77e+07$ |       $3,48e+08$ |       $2,72e+09$ |
|          mu=  30 |       $5,17e+03$ |       $2,45e+09$ |       $1,38e+10$ |       $1,07e+11$ |
|          mu=  50 |       $5,75e+02$ |       $3,65e+10$ |       $1,28e+11$ |       $8,78e+11$ |
|          mu= 100 |       $1,24e+06$ |       $1,71e+11$ |       $3,66e+11$ |       $2,17e+12$ |
|          mu=1000 |       $2,05e+08$ |       $2,54e+11$ |       $4,85e+11$ |       $3,18e+12$ |
|          mu=5000 |       $3,34e+08$ |       $3,89e+10$ |       $4,25e+10$ |       $1,76e+11$ |

Optymalne MU wynosi około 5,


### Funkcjia f13


N = 60
$\sigma = 0,1$


|         Parametr |              min |               śr |              std |              max | 
| ---------------- | ---------------- | ---------------- | ---------------- | ---------------- |
|          mu=   3 |       $1,07e+04$ |       $2,06e+06$ |       $1,36e+07$ |       $1,07e+08$ |
|          mu=   5 |       $5,55e+03$ |       $1,32e+05$ |       $1,26e+05$ |       $6,15e+05$ |
|          mu=   8 |       $3,94e+03$ |       $2,01e+07$ |       $1,54e+08$ |       $1,20e+09$ |
|          mu=  10 |       $7,38e+03$ |       $7,72e+06$ |       $5,88e+07$ |       $4,60e+08$ |
|      **mu=  15** |       $7,07e+03$ |       $4,93e+04$ |       $3,24e+04$ |       $1,52e+05$ |
|          mu=  30 |       $5,31e+03$ |       $1,39e+08$ |       $5,23e+08$ |       $3,72e+09$ |
|          mu=  50 |       $3,69e+03$ |       $1,41e+08$ |       $4,78e+08$ |       $3,05e+09$ |
|          mu= 100 |       $2,37e+03$ |       $2,42e+08$ |       $6,00e+08$ |       $3,90e+09$ |
|          mu=1000 |       $5,05e+05$ |       $1,01e+08$ |       $1,25e+08$ |       $5,48e+08$ |
|          mu=5000 |       $3,10e+05$ |       $2,37e+07$ |       $2,36e+07$ |       $1,10e+08$ |

Optymalny parametr MU dla tej funkcji wynosi około 200,

## Wnioski
Widać że dla obu funckji istnieje optymalna wartość mu, która wynosi około 10,

Zbut niskie mu powoduje słabe wybadanie minimum znalezione przez algorytm, oraz słabe początkowe wybadanie funckcji, co prowadzi do gorszej jakości wyniku.

Zbyt duża populacja powoduje natomiast trudniejsze wychodzenie z lokalnych minimów, przez co rzadziej znajdujemy globalne minima, co za tym idzie otrzymując gorszej jakości wynik.

Co ciekawe, dla obu funckji można zaobserwować że absurdalnie wysoki rozmiar populacji - 5000 daje wynik lepszej jakości niż populacja mniejsza. Oznacza to, że losowe przeszukanie daje lepsze minima niż słabo działający algorytm ewolucyjny (z niewieloma iteracjami). Możliwe że dla większej $\sigma$ wyniki byłyby inne - algorytm ten działa najgorzej gdy ma średnio wielką populację i ma mało iteracji, przypuszczalnie dlatego bo bada niewielkie otoczenie osobników.


# Badanie wpływu parametru mutacji $\sigma$


## Funkcja f2

N = 60
MU = 10

|         Parametr |              min |               śr |              std |              max | 
| ---------------- | ---------------- | ---------------- | ---------------- | ---------------- |
|   $\sigma=0,01$ |       $1,21e+11$ |       $1,54e+17$ |       $6,96e+17$ |       $4,66e+18$ |
|   $\sigma=0,05$ |       $3,02e+07$ |       $1,20e+16$ |       $4,85e+16$ |       $3,34e+17$ |
|   $\sigma=0,10$ |       $1,73e+05$ |       $5,36e+13$ |       $3,46e+14$ |       $2,70e+15$ |
|   $\sigma=0,20$ |       $1,13e+03$ |       $5,55e+10$ |       $3,17e+11$ |       $2,47e+12$ |
| **$\sigma=0,50$** |       $2,41e+02$ |       $2,25e+04$ |       $6,14e+04$ |       $4,06e+05$ |
|   $\sigma=1,00$ |       $2,13e+03$ |       $2,15e+04$ |       $2,35e+04$ |       $1,48e+05$ |
|   $\sigma=2,00$ |       $1,92e+04$ |       $4,82e+06$ |       $1,22e+07$ |       $9,26e+07$ |

Optymalna $\sigma$ wynosi  0,5

## Funkcja f13

N = 60
MU = 10

| Parametr           | min        | śr         | std        | max        |     |
| ------------------ | ---------- | ---------- | ---------- | ---------- | --- |
| $\sigma$=0,001     | $1,40e+08$ | $1,36e+10$ | $1,33e+10$ | $6,34e+10$ |     |
| $\sigma$=0,005     | $1,83e+07$ | $1,51e+10$ | $1,51e+10$ | $7,58e+10$ |     |
| $\sigma$=0,010     | $3,94e+03$ | $1,23e+10$ | $1,34e+10$ | $5,76e+10$ |     |
| $\sigma$=0,050     | $5,98e+03$ | $1,39e+09$ | $3,52e+09$ | $1,68e+10$ |     |
| **$\sigma$=0,100** | $1,41e+04$ | $7,28e+05$ | $5,06e+06$ | $3,96e+07$ |     |
| $\sigma$=0,500     | $4,85e+04$ | $1,08e+06$ | $1,05e+06$ | $4,63e+06$ |     |
| $\sigma$=1,000     | $4,57e+04$ | $3,84e+06$ | $3,76e+06$ | $2,15e+07$ |     |
| $\sigma$=2,000     | $8,55e+04$ | $1,87e+07$ | $1,70e+07$ | $7,44e+07$ |     |

Optymalna $\sigma$ wynosi około 0,1

## Wnioski

Dla obu funckji możemy znaleźć optymalny parametr $\sigma$, który jest rzędu 1/10,
Zbut mała $\sigma$ powoduje słabe wybadanie otoczenia osobników, a zbyt duża $\sigma$  powoduje stratę jakości wyniku (tracimy dobre osobniki).

Porównując optima obu funckji możemy zgadnąć, że funckja f13 jest 'stromsza' niż funkcja f2 - tj potrzebujemy mniejszej $\sigma$ żeby nie tracić jakości wyniku, gdyż dla tej samej $\sigma$  wynik szybciej rośnie.
