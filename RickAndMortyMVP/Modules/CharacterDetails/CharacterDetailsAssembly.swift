//
//  CharacterDetailsAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import UIKit

struct CharacterDetailsAssembly {

    static func createModule(userID: String) -> CharacterDetailViewController {

        let view = CharacterDetailViewController()
        let presenter: CharacterPresenterProtocol = CharacterPresenter(resultText: userID, view: view)
        print(userID)
        view.presenter = presenter
        return view
    }
}
