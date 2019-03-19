struct EqualsZero<N: Numeric>: Refinement {
    static func check(_ value: N) -> Bool {
        return value == 0
    }
}

struct GreaterThanZero<N: Comparable & Numeric>: Refinement {
    static func check(_ value: N) -> Bool {
        return value > 0
    }
}

typealias PositiveNumber<N> = Or<EqualsZero<N>, GreaterThanZero<N>> where N: Comparable & Numeric
typealias NegativeNumber<N> = Not<PositiveNumber<N>> where N: Comparable & Numeric
