//
//  ViewController.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/23.
//

import UIKit
import Foundation
import APIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let api = SearchArticleList()
        Session.send(api){ result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                print(error)
            }
        }
        // Do any additional setup after loading the view.
    }
}

