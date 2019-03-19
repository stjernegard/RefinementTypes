public protocol Refinement {
    associatedtype RefinedType
    static func check(_ value: RefinedType) -> Bool
}
