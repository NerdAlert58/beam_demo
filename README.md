**The newer version of the code which works with the latest Erlang, Elixir, and Phoenix, can be found [here](https://github.com/sasa1977/soul_of_erlang_and_elixir).**

# Demo system

The original demo used in [The Soul of Erlang and Elixir](https://www.youtube.com/watch?v=JvBT4XBdoUE) talk.

## Getting started

Requires Erlang, Elixir, and node.js, as specified in the [.tool-versions](./.tool-versions) file.
You can use [asdf](https://github.com/asdf-vm/asdf) for that.

Building:

```
cd example_system
mix deps.get &&
pushd assets &&
npm install &&
popd &&
mix compile
```

Starting for development with live reload:

```
iex -S mix phx.server
```

Then, you can visit the following links:

  - http://localhost:4000
  - http://localhost:4000/load
  - http://localhost:4000/services

## Demo

Build a production release:

```
cd example_system
MIX_ENV=prod mix release
```

Start the release in the background:

```
./_build/prod/rel/system/bin/system daemon
```

Open a remote console:

```
./_build/prod/rel/system/bin/system remote
```

Stop the release:

```
./_build/prod/rel/system/bin/system stop
```
