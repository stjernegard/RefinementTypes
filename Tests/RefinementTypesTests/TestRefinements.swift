import RefinementTypes

struct Fail: Refinement {
    static func check(_ value: String) -> Bool {
        return false
    }
}

struct Succeed: Refinement {
    static func check(_ value: String) -> Bool {
        return true
    }
}
