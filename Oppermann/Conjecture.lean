import Oppermann.Basic

namespace Oppermann

/--
Oppermann's conjecture: for each `n >= 2`, there is a prime in each of
`(n(n-1), n^2)` and `(n^2, n(n+1))`.
-/
theorem oppermann_conjecture :
    ∀ n : Nat, 2 ≤ n → HasOppermannPrimes n := by
  intro n hn
  sorry

/-- Legendre-style consequence obtained by shifting the Oppermann index. -/
theorem legendre_form_of_oppermann_conjecture :
    ∀ n : Nat, 1 ≤ n → HasPrimeBetweenSquares n := by
  intro n hn
  have hSucc : 2 ≤ n + 1 := by
    simpa [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using Nat.succ_le_succ hn
  exact hasPrimeBetweenSquares_of_hasOppermannPrimes_succ (oppermann_conjecture (n + 1) hSucc)

/-- TODO: Show Oppermann implies at least two primes between consecutive squares. -/
theorem two_primes_between_squares_todo :
    True := by
  sorry

/-- TODO: Add asymptotic and density-style consequences as formal targets. -/
theorem asymptotic_consequences_todo :
    True := by
  sorry

end Oppermann
