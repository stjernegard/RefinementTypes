public struct NonEmptyString: Refinement {
    public static func check(_ value: String) -> Bool {
        return !value.isEmpty
    }
}
