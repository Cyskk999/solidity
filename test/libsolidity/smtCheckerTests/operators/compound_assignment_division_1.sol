pragma experimental SMTChecker;
contract C {
	function f(uint x) public pure {
		require(x == 2);
		uint y = 10;
		y /= y / x;
		assert(y == x);
		assert(y == 0);
	}
}
// ----
// Warning 1218: (129-143): CHC: Error trying to invoke SMT solver.
// Warning 1218: (147-161): CHC: Error trying to invoke SMT solver.
// Warning 4661: (147-161): BMC: Assertion violation happens here.
