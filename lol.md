### Proste structy
struct punkt - x, y
struct wektor : punkt

### Struct kula:
#### Pamięć
* kul-id
* Współrzędne (punkt)
* Prędkość ( wektor)
* STATIC Promień 
#### Funkcje
* gettery /settery
* Pozycja po t
### Strstruct kula-w-symulacji:
#### Pamięć
* Czas zarażenia (absolutny 0 - niezarażona, t:t+T zaraża, >t+T chora nie zaraża)
* Queue \<zdarzenia\> 
* Pointer do najbliższego zderzenia
* Inkarnacja kuli
#### Funkcje
* gettery /settery -> zakaź się, czy_zakarza
* Aktualizuj_zderzenia

funkcja czas do zderzenia 2 KONKRETNYCH kul
funkcja zderzenie_kul() -> infekcja



### smart smart-kolejka:
* priority_queue<czas, <kul, inkarkanacja>, <kula, inkarnacja>>
* Get next -> while(nieważne) pop; else return obecne;

### Miain
main(){
	-> Aktualizuj wszystkie
		while(true){
		-> Weż najbliższe zderzenie
		-> Zakaź, zderz, update_najbliższe zdarzenia
		}
}
