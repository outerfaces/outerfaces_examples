# Examples

## Hello Stars

Before starting the example application, make sure to run:

```bash
mix outerfaces.dist
```

This will copy the contents of `./outerfaces/` into `./priv/static/outerfaces/`.


## New Application Setup (from scratch)

Install asdf

```bash
[specific to your OS and shell]
```

### Install Elixir and Erlang

```bash
asdf plugin add erlang
asdf plugin add elixir
```

### Install the Phoenix project generator

```bash
mix archive.install hex phx_new --force
```

### Create a new Phoenix project

```bash
mix phx.new hello_stars --no-ecto --no-html --no-assets --no-gettext --no-live --no-mailer
```

## Add Outerfaces to your project

Add Outerfaces to your list of dependencies in `mix.exs`:

```elixir
defp deps do
  [
    {:outerfaces, "~> 0.1.0"}
  ]
end
```

Then, run `mix deps.get` in your terminal to install the new dependency.