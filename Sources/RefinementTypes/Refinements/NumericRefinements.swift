public struct PositiveNumber<N: Comparable & Numeric>: Refinement {
    public static func check(_ value: N) -> Bool {
        return value >= 0
    }
}

public typealias NegativeNumber<N> = Not<PositiveNumber<N>> where N: Comparable & Numeric
