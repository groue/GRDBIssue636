import Foundation

public protocol SubEncodable {
    func encode()
}

extension SubEncodable where Self: Encodable {
    public func encode() {
        let encoder = SubEncoder<Self>()
        try! self.encode(to: encoder)
    }
}

private class SubEncoder<T: SubEncodable>: Encoder {
    var codingPath: [CodingKey] = []
    var userInfo: [CodingUserInfoKey: Any] = [:]
    
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
