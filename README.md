# SwiftNilsimsa

Swift package with implementation of the [Nilsimsa hash algorithm](https://en.wikipedia.org/wiki/Nilsimsa_Hash).

## Documentation

Import the package and use nilsimsa to generate your hashes.
```
import SwiftNilsimsa

var hash: String = SwiftNilsimsa.nilsimsa(input: <STRING TO HASH>)
```

To compare we need two strings oh hashes which we put in this function:
```
SwiftNilsimsa.nilsimsa_compare(hash_1: String, hash_2: String) 
```
