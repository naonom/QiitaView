//
//  ProductModel.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/25.
//

import Foundation
import APIKit

protocol ProductModelInput: class {
    func getQiitaArticle()
}

final class  productModel: ProductModelInput {
    private let apiQiita: SearchArticleList!
    
    init(apiqiita: SearchArticleList){
        self.apiQiita = apiqiita
    }
    
    func getQiitaArticle() {
        Session.send(apiQiita){ result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
}
