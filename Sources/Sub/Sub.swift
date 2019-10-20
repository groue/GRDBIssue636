import Foundation

extension Encodable {
    public func subEncode() {
        let encoder = SubEncoder<Self>()
        try! self.encode(to: encoder)
    }
}

private class SubEncoder<T: Encodable>: Encoder {
    var codingPath: [CodingKey] { [] }
    var userInfo: [CodingUserInfoKey: Any] { [:] }
    
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
