//
//  Created by Alex Vlasov on 25/10/2018.
//  Copyright © 2018 Alex Vlasov. All rights reserved.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public struct ABI {
    
}

protocol ABIElementPropertiesProtocol {
    var isStatic: Bool {get}
    var isArray: Bool {get}
    var isTuple: Bool {get}
    var arraySize: ABI.Element.ArraySize {get}
    var subtype: ABI.Element.ParameterType? {get}
    var memoryUsage: UInt64 {get}
    var emptyValue: Any {get}
}

protocol ABIEncoding {
    var abiRepresentation: String {get}
}

protocol ABIValidation {
    var isValid: Bool {get}
}
