import CXX

extension VectorLong: RandomAccessCollection {
    public var startIndex: Int { 0 }
    public var endIndex: Int { size() }
}
