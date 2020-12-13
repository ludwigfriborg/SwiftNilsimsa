import XCTest
@testable import SwiftNilsimsa

final class SwiftNilsimsaTests: XCTestCase {
    func testNilsimsa() {
        let hash_n_codes = [
            ("", "0000000000000000000000000000000000000000000000000000000000000000"),
            ("Sed ut felis erat. Integer ac ex libero.", "639a3e14881001053200914180d9528200200a142bc4f001011dda42ad9418c5"),
            ("Nulla sit amet dolor eget libero mollis consectetur id quis leo. Nunc eget lorem pellentesque, euismod ligula vel, volutpat sem. In vestibulum arcu ac sagittis fringilla. Pellentesque sit amet maximus quam. Morbi porta ipsum eu lectus consequat, at posuere lorem convallis.", "760848208268ecc1d16ea84434a668f16b00ce135ed9fabf3e42482fa285e064"),
            ("Nunc laoreet luctus nunc quis tincidunt. Aliquam erat volutpat. Fusce euismod nibh ante, vel imperdiet risus sollicitudin id. Suspendisse bibendum tincidunt ligula, blandit imperdiet magna aliquam sed. Cras viverra ac orci quis sagittis. Proin vitae vehicula purus, eget finibus dui. Fusce lacus erat, finibus sed libero eget, pretium finibus leo. Nunc blandit ultrices lobortis. Etiam ut lorem sit amet purus scelerisque aliquam. Etiam eu sagittis purus, sed feugiat purus.", "93e288a236dc82d9d5f8b3c4fdc478e17eb33c6149d27840291bee2ae3dce945"),
            ("Nunc ornare mi sem, et pretium erat blandit nec. Cras accumsan eros vel nisl fringilla porta. Donec ut pharetra augue. Pellentesque bibendum molestie urna a vulputate. Integer eleifend posuere sagittis. Pellentesque et ligula ex. Mauris odio eros, lacinia sollicitudin leo at, ullamcorper fermentum nunc.", "33ed6eb28248c90017de8950481a5cb04f836559a02263f10d9fc998a7e8f84c"),
            ("Nulla porttitor ligula vel urna tristique lacinia. Cras at facilisis nunc. Donec rhoncus elementum ipsum sed porttitor. In cursus bibendum commodo. Phasellus quis mi mollis, tristique orci in, bibendum elit. Donec scelerisque placerat lacus, at auctor erat malesuada eu. Fusce et felis non metus ultrices commodo.", "0188103183b07993dbf6fac7b404657026222eebb316a9cc0d1fce0172f8f3ce"),
            ("Nulla facilisi. Morbi vulputate, nisi eget dictum suscipit, tellus ex tristique tortor, eu varius libero diam vitae magna. Phasellus laoreet in eros et dapibus. Duis a auctor urna. Vestibulum vel finibus eros. Nulla eu feugiat augue, eget dictum odio. Nunc faucibus, nisi eu bibendum interdum, nunc odio euismod neque, eu tempor purus ligula sit amet odio. Aenean vitae tempus sapien.", "13812d8a03d8eb52d0178a45a8c63bf068a04c51d796f8d9652b6c5963e3e86c")
        ]
        
        for item in hash_n_codes {
            XCTAssertEqual(SwiftNilsimsa.nilsimsa(input: item.0), item.1.uppercased())
        }
    }
    
    func testNisimsaCompareSame() {
        let hash_n_distances = [
            ("0000000000000000000000000000000000000000000000000000000000000000", "0000000000000000000000000000000000000000000000000000000000000000", 1.0),
        ]
        
        for item in hash_n_distances {
            XCTAssertEqual(SwiftNilsimsa.nilsimsa_compare(hash_1: item.0, hash_2: item.1), item.2)
        }
    }
    
    func testNisimsaCompareSimilar() {
        let hash_n_distances = [
            ("760848208268ecc1d16ea84434a668f16b00ce135ed9fabf3e42482fa285e064", "770848208268ecc1d16ea84434a668f16b00ce135ed9fabf3e42482fa285e064", 0.99609375),
        ]
        
        for item in hash_n_distances {
            XCTAssertEqual(SwiftNilsimsa.nilsimsa_compare(hash_1: item.0, hash_2: item.1), item.2)
        }
    }
    
    func testNisimsaCompareDifferent() {
        let hash_n_distances = [
            ("33ed6eb28248c90017de8950481a5cb04f836559a02263f10d9fc998a7e8f84c", "13812d8a03d8eb52d0178a45a8c63bf068a04c51d796f8d9652b6c5963e3e86c", 0.6171875)
        ]
        
        for item in hash_n_distances {
            XCTAssertEqual(SwiftNilsimsa.nilsimsa_compare(hash_1: item.0, hash_2: item.1), item.2)
        }
    }
}
