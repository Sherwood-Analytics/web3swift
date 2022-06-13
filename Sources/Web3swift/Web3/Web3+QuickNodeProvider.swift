//
//  Web3+QuickNodeProvider.swift
//  
//
//  Created by Ralph Küpper on 6/13/22.
//

import Foundation
import BigInt
import WebSocketKit

public final class QuickNodeProvider: Web3HttpProvider {
    public init?(_ net:Networks, url: String, keystoreManager manager: KeystoreManager? = nil) {
        var requestURLstring = "https://" + url
        let providerURL = URL(string: requestURLstring)
        super.init(providerURL!, network: net, keystoreManager: manager)
    }
}
