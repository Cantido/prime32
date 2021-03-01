# Prime32

An Elixir wrapper around a file containing all prime numbers that fit in 32 bits.

## Installation

This package can be installed by adding `prime32` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:prime32, "~> 1.0.0"}
  ]
end
```

The docs can be found at [https://hexdocs.pm/prime32](https://hexdocs.pm/prime32).

## Usage

This is a very small library, and only provides one function: `stream/0`.

The `stream/0` function returns an Elixir `Stream` containing all the 32-bit primes in ascending order.

```elixir
Prime32.stream() |> Enum.take(5)
[2, 3, 5, 7, 11]
```

## Maintainer

This project was developed by [Rosa Richter](https://github.com/Cantido).
You can get in touch with her on [Keybase.io](https://keybase.io/cantido).

## Contributing

Questions and pull requests are more than welcome.
I follow Elixir's tenet of bad documentation being a bug,
so if anything is unclear, please [file an issue](https://github.com/Cantido/prime32/issues/new)!
Ideally, my answer to your question will be in an update to the docs.

## License

MIT License

Copyright 2020 Rosa Richter

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
