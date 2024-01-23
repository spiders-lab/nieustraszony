# Instalacja PostGIS na MacOSX

Instalacja PostgreSQL:

```shell
brew install postgres
```

Instalacja PostGIS:

```shell
brew install postgis
```

Start PostgreSQL:

```shell
pg_ctl -D /usr/local/var/postgres start
```

i inicializacja bazy danych:

```shell
initdb /usr/local/var/postgres
```

Nowa baza danych dla PostGIS:

```shell
createdb postgis_test
```

Otwarcie konsoli nowej bazy danych:

```shell
psql postgis_test
```

Włączenie PostGIS w nowej bazie danych:

```shell
CREATE EXTENSION postgis;
```

Sprawdzenie:

```shell
SELECT PostGIS_Version();
```

Koniec:

```shell
\q
```
