struct Not<Precondition: Refinement>: Refinement {
    static func check(_ value: Precondition.RefinedType) -> Bool {
        return !Precondition.check(value)
    }
}

struct And<Left: Refinement, Right: Refinement>: Refinement where Left.RefinedType == Right.RefinedType {
    static func check(_ value: Left.RefinedType) -> Bool {
        return Left.check(value) && Right.check(value)
    }
}

struct Or<Left: Refinement, Right: Refinement>: Refinement where Left.RefinedType == Right.RefinedType {
    static func check(_ value: Left.RefinedType) -> Bool {
        return Left.check(value) || Right.check(value)
    }
}
