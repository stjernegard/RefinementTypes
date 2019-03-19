public struct Not<Precondition: Refinement>: Refinement {
    public static func check(_ value: Precondition.RefinedType) -> Bool {
        return !Precondition.check(value)
    }
}

public struct And<Left: Refinement, Right: Refinement>: Refinement where Left.RefinedType == Right.RefinedType {
    public static func check(_ value: Left.RefinedType) -> Bool {
        return Left.check(value) && Right.check(value)
    }
}

public struct Or<Left: Refinement, Right: Refinement>: Refinement where Left.RefinedType == Right.RefinedType {
    public static func check(_ value: Left.RefinedType) -> Bool {
        return Left.check(value) || Right.check(value)
    }
}
