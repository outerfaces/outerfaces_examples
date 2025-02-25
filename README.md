# Outerfaces Examples

## What is Outerfaces?

Outerfaces is an experimental web framework that is built on top of Elixir + Phoenix.

It is designed to streamline web application development by integrating front-end and back-end workflows within a single codebase, while maintaining their separation.

Outerfaces is still a hobby project and in early development, and as such is not recommended for production use.

See the core library [here](https://github.com/outerfaces/outerfaces_ex_core).

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
    {:outerfaces, "~> 0.2.3"}
  ]
end
```

Then, run `mix deps.get` in your terminal to install the new dependency.