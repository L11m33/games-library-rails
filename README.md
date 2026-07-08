# Wypożyczalnia gier

Aplikacja webowa napisana w Ruby on Rails, służąca do przeglądania gier, zarządzania wypożyczeniami oraz dodawania recenzji przez użytkowników.

## Opis projektu

Wypożyczalnia gier to prosta aplikacja webowa umożliwiająca zarządzanie biblioteką gier. Projekt pozwala przeglądać dostępne gry, tworzyć wypożyczenia oraz dodawać recenzje wraz z ocenami.

Aplikacja została wykonana z użyciem Ruby on Rails i wykorzystuje relacyjną strukturę bazy danych opartą na modelach gier, użytkowników, wypożyczeń i recenzji.

## Funkcje

* przeglądanie listy gier
* wyświetlanie szczegółów gry
* tworzenie wypożyczeń gier
* przeglądanie listy wypożyczeń
* dodawanie recenzji do gier
* wyświetlanie recenzji użytkowników
* przykładowe dane w bazie z użyciem Rails seeds

## Technologie

* Ruby
* Ruby on Rails
* SQLite
* HTML / ERB
* CSS
* JavaScript
* Docker

## Główne modele

* `Game` – przechowuje informacje o grach, takie jak tytuł, gatunek, rok wydania i opis
* `User` – przechowuje podstawowe dane użytkownika
* `Rental` – łączy użytkownika z wypożyczoną grą
* `Review` – przechowuje recenzje, komentarze i oceny gier

## Struktura bazy danych

Aplikacja zawiera następujące główne tabele:

* `games`
* `users`
* `rentals`
* `reviews`

Relacje między modelami:

* jedna gra może mieć wiele wypożyczeń
* jedna gra może mieć wiele recenzji
* jeden użytkownik może mieć wiele wypożyczeń
* jeden użytkownik może mieć wiele recenzji
* wypożyczenie należy do gry i użytkownika
* recenzja należy do gry i użytkownika

## Uruchomienie projektu

1. Sklonuj repozytorium:

```bash
git clone https://github.com/L11m33/game-rental-rails.git
```
2. Przejdź do folderu projektu:
    cd game-rental-rails

   
3. Zainstaluj zależności:
    bundle install

   
4. Przygotuj bazę danych:
  rails db:create
  rails db:migrate
  rails db:seed

5. Uruchom serwer Rails:
  rails server

6. Otwórz aplikację w przeglądarce:
  http://localhost:3000
Przykładowe dane

Projekt zawiera przykładowe dane dla gier, użytkowników, wypożyczeń i recenzji.

Przykładowe gry dostępne w bazie:

The Witcher 3
Cyberpunk 2077
FIFA 25
Minecraft
Among Us
Struktura projektu

Projekt wykorzystuje standardową strukturę Ruby on Rails:

* app/models – modele aplikacji
* app/controllers – kontrolery obsługujące żądania
* app/views – widoki aplikacji
* config/routes.rb – ścieżki aplikacji
* db/schema.rb – struktura bazy danych
* db/seeds.rb – przykładowe dane do bazy

Autor
Kamil Fedan

