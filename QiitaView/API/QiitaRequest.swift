//
//  QiitaRequest.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/23.
//

import Foundation
import APIKit

protocol QiitaRequest: Request{
    
}

extension QiitaRequest {
    var baseURL: URL {
        return URL(string: "https://qiita.com")!
    }
}

extension QiitaRequest where Response: Decodable {
    var dataParser: DataParser{
        return DecodableDataParser()
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        return try JSONDecoder().decode(Response.self, from: data)
    }
}
