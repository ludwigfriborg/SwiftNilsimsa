public func nilsimsa(input: String) -> String {
    return Nilsimsa.hash(input: input)
}

public func nilsimsa_compare(hash_1: String, hash_2: String) -> Double {
    return Nilsimsa.compare(in_1: hash_1, in_2: hash_2)
}
