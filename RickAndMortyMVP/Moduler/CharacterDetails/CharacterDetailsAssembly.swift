//
//  CharacterDetailsAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import UIKit

struct CharacterDetailsAssembly {

    static func createModule(userID: String) -> CharacterDetailsViewController {

        let storyboard = UIStoryboard(name: "CharacterDetailsViewController", bundle: .main)

        guard let characterDetailsViewController = storyboard.instantiateViewController(withIdentifier: "detailsVC")
                as? CharacterDetailsViewController else {
            fatalError()
        }

        guard let view = characterDetailsViewController as? CharacterViewProtocol
        else {
            fatalError()
        }

        let presenter: CharacterPresenterProtocol = CharacterPresenter(resultText: userID, view: view)

        characterDetailsViewController.presenter = presenter
        return characterDetailsViewController
    }
}
