import Foundation

public struct Container {
    public init() { }
}

public protocol FooEncodable {
    func encode(to container: inout Container)
}

extension FooEncodable where Self: Encodable {
    public func encode(to container: inout Container) {
        let encoder = FooEncoder<Self>(container: container)
        try! self.encode(to: encoder)
    }
}

private class FooEncoder<T: FooEncodable>: Encoder {
    private var container: Container
    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey: Any] = [:]
    
    init(container: Container) {
        self.container = container
    }
    
    func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        fatalError("not implemented")
    }
    
    func unkeyedContainer() -> UnkeyedEncodingContainer {
        fatalError("not implemented")
    }
    
    func singleValueContainer() -> SingleValueEncodingContainer {
        fatalError("not implemented")
    }
}
