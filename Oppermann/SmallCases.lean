import Oppermann.Basic
import Mathlib.Tactic.IntervalCases

namespace Oppermann

theorem hasOppermannPrimes_two_to_five {n : Nat} (hn2 : 2 ≤ n) (hn5 : n ≤ 5) :
    HasOppermannPrimes n := by
  interval_cases n
  · simpa using hasOppermannPrimes_two
  · simpa using hasOppermannPrimes_three
  · simpa using hasOppermannPrimes_four
  · simpa using hasOppermannPrimes_five

/-- TODO: Replace this with a computationally certified large finite range theorem. -/
theorem hasOppermannPrimes_two_to_tenThousand {n : Nat} (hn2 : 2 ≤ n) (hnB : n ≤ 10000) :
    HasOppermannPrimes n := by
  sorry

end Oppermann
