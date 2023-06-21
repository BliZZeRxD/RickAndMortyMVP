//
//  TabBarPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 16.06.2023.
//

import UIKit

class TabBarPresenter: TabBarPresenterProtocol {
    let resultText: String
    var userID: String = ""

    init(resultText: String) {
        self.resultText = resultText
    }
    
    func setValueForID() {
        userID = resultText
    }
    
}
