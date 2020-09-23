//
//  QiitaAPI.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/23.
//

//http://qiita.com/api/v2/items?page=1&per_page=10

//Example: [{"name"=>"Ruby", "versions"=>["0.0.1"]}]
import Foundation
import APIKit

struct SearchArticleList: QiitaRequest {
        typealias Response = [QiitaResponse]
        
        let method: HTTPMethod = .get
        let path: String = "/api/v2/items"
}
