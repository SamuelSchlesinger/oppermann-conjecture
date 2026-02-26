import Oppermann.Defs

namespace Oppermann

theorem hasOppermannPrimes_two : HasOppermannPrimes 2 := by
  refine ⟨3, 5, by decide, by decide, ?_, ?_⟩
  · decide
  · decide

theorem hasOppermannPrimes_three : HasOppermannPrimes 3 := by
  refine ⟨7, 11, by decide, by decide, ?_, ?_⟩
  · decide
  · decide

theorem hasOppermannPrimes_four : HasOppermannPrimes 4 := by
  refine ⟨13, 17, by decide, by decide, ?_, ?_⟩
  · decide
  · decide

theorem hasOppermannPrimes_five : HasOppermannPrimes 5 := by
  refine ⟨23, 29, by decide, by decide, ?_, ?_⟩
  · decide
  · decide

theorem HasOppermannPrimes.lower_prime {n : Nat} (h : HasOppermannPrimes n) :
    ∃ p : Nat, Nat.Prime p ∧ InLowerOppermannInterval n p := by
  rcases h with ⟨p, q, hp, hq, hpInt, hqInt⟩
  exact ⟨p, hp, hpInt⟩

theorem HasOppermannPrimes.upper_prime {n : Nat} (h : HasOppermannPrimes n) :
    ∃ q : Nat, Nat.Prime q ∧ InUpperOppermannInterval n q := by
  rcases h with ⟨p, q, hp, hq, hpInt, hqInt⟩
  exact ⟨q, hq, hqInt⟩

/-- Oppermann at `n + 1` yields a Legendre-style prime between `n^2` and `(n + 1)^2`. -/
theorem hasPrimeBetweenSquares_of_hasOppermannPrimes_succ {n : Nat}
    (h : HasOppermannPrimes (n + 1)) :
    HasPrimeBetweenSquares n := by
  rcases h with ⟨p, q, hp, hq, hpLower, hqUpper⟩
  rcases hpLower with ⟨hLower, hUpper⟩
  refine ⟨p, hp, ?_, ?_⟩
  · have hSqLe : n ^ 2 ≤ (n + 1) * n := by
      calc
        n ^ 2 = n * n := by simp [pow_two]
        _ ≤ (n + 1) * n := Nat.mul_le_mul_right n (Nat.le_succ n)
    have hLower' : (n + 1) * n < p := by
      simpa [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using hLower
    exact lt_of_le_of_lt hSqLe hLower'
  · simpa [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using hUpper

/-- TODO: Prove lower interval width is exactly `n`. -/
theorem lower_interval_width (n : Nat) :
    n ^ 2 - n * (n - 1) = n := by
  sorry

/-- TODO: Prove upper interval width is exactly `n`. -/
theorem upper_interval_width (n : Nat) :
    n * (n + 1) - n ^ 2 = n := by
  sorry

/-- TODO: Derive disjointness and ordering facts for the two Oppermann intervals. -/
theorem interval_separation_todo :
    True := by
  sorry

end Oppermann
