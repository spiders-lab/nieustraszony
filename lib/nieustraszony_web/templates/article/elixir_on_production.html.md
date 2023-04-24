# Elixir na produkcji

Instalacja zależności:

```console
mix deps.get --only prod
```

Ustalenie adresu do bazy danych:

```console
export DATABASE_URL=ecto://ubuntu:ubuntu@localhost/nieustraszony_prod
```

Wygenerowanie klucza:

```console
MIX_ENV=prod mix phx.gen.secret
```

i przypisanie go:

```console
export SECRET_KEY_BASE=XXXXXXX
```

Wdrożenie plików css, js, obrazków, fontów:

```console
MIX_ENV=prod mix assets.deploy
```

Aktualizacja struktury bazy danych:

```console
MIX_ENV=prod mix ecto.migrate
```

Kompilacja i wystawienie na porcie 4002:

```console
PORT=4002 MIX_ENV=prod mix phx.server
```
