//
//  QiitaCollectionModel.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/25.
//

import Foundation

class QiitaCollectionModel {
    private var model: ProductModelInput!
    private let apiQiita: SearchArticleList!
    
    init(apiqiita: SearchArticleList){
        self.apiQiita = apiqiita
    }
    
    func getArtcleList(){
        model.getQiitaArticle()
    }
    
}
