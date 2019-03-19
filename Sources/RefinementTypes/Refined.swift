public struct Refined<Precondition: Refinement> {
    public let wrapped: Precondition.RefinedType
    public init?(_ value: Precondition.RefinedType) {
        guard Precondition.check(value) else { return nil }
        self.wrapped = value
    }
}
