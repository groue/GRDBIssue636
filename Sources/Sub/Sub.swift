import Foundation

public protocol FooEncodable {
    func encode()
}

extension FooEncodable where Self: Encodable {
    public func encode() {
        let encoder = FooEncoder<Self>()
        try! self.encode(to: encoder)
    }
}

private class FooEncoder<T: FooEncodable>: Encoder {
    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey: Any] = [:]
    
    init() {
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
