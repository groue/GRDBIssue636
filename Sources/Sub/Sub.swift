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
    
    init() { }
    
    func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        fatalError("never called")
    }
    
    func unkeyedContainer() -> UnkeyedEncodingContainer {
        fatalError("never called")
    }
    
    func singleValueContainer() -> SingleValueEncodingContainer {
        fatalError("never called")
    }
}
