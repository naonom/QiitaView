//
//  DecodableDataParser.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/23.
//

import Foundation
import APIKit

final class DecodableDataParser: DataParser {
    
    var contentType: String? {
        return "application/json"
    }
    
    func parse(data: Data) throws -> Any {
        return data
    }
}
