# Szablony Markdown we frameworku Phoenix

[phoenix_markdown](https://github.com/boydm/phoenix_markdown) - jest silnikiem renderującym pliki markdown jako szablony lub wycinki we frameworku [Phoenix](https://www.phoenixframework.org/).

Korzystanie z [phoenix_markdown](https://github.com/boydm/phoenix_markdown) jest bardzo proste. Wystarczy, że umieścisz plik **markdown** w katalogu **templates**, na przykład w podkatalogu **article**, do którego masz utworzony odpowiedni widok.

```json
templates/
    article/
        hello.html.md
    page/
        index.html.eex
```

Możesz potem wyrenderować plik hello.html.md w innym szablonie:

```elixir
<%= render ProjectWeb.ArticleView, "hello.html", assigns %>
```

## Instalacja phoenix_markdown

1. Dodaj {:phoenix_markdown, "~> 1.0"} do zależności w **mix.exs**.
2. Dodaj {:earmark, "~> 1.4"} do zależności w **mix.exs**, aby wyeliminować ostrzeżenie o braku [**earmark**](https://github.com/pragdave/earmark).
3. Dodaj poniższy kod do **config/config.exs**:

```elixir
config :phoenix, :template_engines,
    md: PhoenixMarkdown.Engine
```

4. Zaaktualizuj poniższy kod w **config/dev.exs**, aby automatycznie odświerzać stronę po zmianie pliku **markdown**:

```elixir
config :project, Project.Endpoint,
    live_reload: [
        patterns: [
            ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
            ~r{web/views/.*(ex)$},
            ~r{web/templates/.*(eex|md)$} # <----
        ]
    ]
```

Powodzenia!
