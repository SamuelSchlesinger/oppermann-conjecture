import Mathlib.Data.Nat.Prime.Basic

namespace Oppermann

/-- Prime interval below `n^2` used in Oppermann's conjecture. -/
def InLowerOppermannInterval (n p : Nat) : Prop :=
  n * (n - 1) < p ∧ p < n ^ 2

/-- Prime interval above `n^2` used in Oppermann's conjecture. -/
def InUpperOppermannInterval (n q : Nat) : Prop :=
  n ^ 2 < q ∧ q < n * (n + 1)

/-- Oppermann witness pair for index `n`. -/
def HasOppermannPrimes (n : Nat) : Prop :=
  ∃ p q : Nat,
    Nat.Prime p ∧ Nat.Prime q ∧
      InLowerOppermannInterval n p ∧
      InUpperOppermannInterval n q

/-- One-prime-between-squares predicate used to compare with Legendre. -/
def HasPrimeBetweenSquares (n : Nat) : Prop :=
  ∃ p : Nat, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2

instance instDecidableInLowerOppermannInterval (n p : Nat) :
    Decidable (InLowerOppermannInterval n p) := by
  unfold InLowerOppermannInterval
  infer_instance

instance instDecidableInUpperOppermannInterval (n q : Nat) :
    Decidable (InUpperOppermannInterval n q) := by
  unfold InUpperOppermannInterval
  infer_instance

end Oppermann
