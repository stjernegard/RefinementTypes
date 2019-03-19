struct Refined<Precondition: Refinement> {
    let wrapped: Precondition.RefinedType
    init?(_ value: Precondition.RefinedType) {
        guard Precondition.check(value) else { return nil }
        self.wrapped = value
    }
}
