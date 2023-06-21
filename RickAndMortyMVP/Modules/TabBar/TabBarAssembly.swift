//
//  TabBarAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 16.06.2023.
//

import UIKit

struct TabBarAssembly {

    static func createModule(userID: String) -> TabBarVC {
        let view = TabBarVC()
        let presenter: TabBarPresenterProtocol = TabBarPresenter(resultText: userID) as TabBarPresenterProtocol
        view.presenter = presenter
        return view
    }
}
