//
//  TabBarAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 16.06.2023.
//

import UIKit

struct TabBarAssembly {

    static func createModule() -> TabBarVC {
        let view = TabBarVC()
        let presenter: TabBarPresenterProtocol = TabBarPresenter() as TabBarPresenterProtocol
        view.presenter = presenter
        return view
    }
}
