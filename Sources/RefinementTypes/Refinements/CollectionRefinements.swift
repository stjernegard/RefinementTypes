public struct NonEmpty<T: Collection>: Refinement {
    public static func check(_ value: T) -> Bool {
        return !value.isEmpty
    }
}
