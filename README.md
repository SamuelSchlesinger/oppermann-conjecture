# Oppermann Conjecture

A Lean 4 formalization scaffold for Oppermann's conjecture.

## The Conjecture

For every integer `n >= 2`:

- there is a prime in `(n(n - 1), n^2)`, and
- there is a prime in `(n^2, n(n + 1))`.

In Lean:

`forall n : Nat, 2 <= n -> HasOppermannPrimes n`.

## Structure

| Module | Contents | TODO status |
|--------|----------|-------------|
| `Oppermann.Defs` | Core interval predicates and witness predicates | complete |
| `Oppermann.Basic` | Explicit witnesses (`n = 2..5`) and a proved Legendre-style bridge lemma | TODOs present |
| `Oppermann.SmallCases` | Finite-range theorem for `2 <= n <= 5` + TODO bound extension | TODOs present |
| `Oppermann.Conjecture` | Main open statement and consequence targets | TODOs present |

## Build

```sh
lake update && lake build
```
