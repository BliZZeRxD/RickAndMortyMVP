//
//  CharactersViewModel.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

//Исползуется для передачи данных между презентером и view

import Foundation
import UIKit

class CharactersViewModel: UIViewController,CharactersViewProtocol {
    weak var viewController: CharactersViewController?

    init(viewController: CharactersViewController) {
        self.viewController = viewController
    }

    func navigateToDetails() {
        let storyboard = UIStoryboard(name: "CharacterDetailsViewController", bundle: nil)
        guard let nextViewController = storyboard.instantiateViewController(withIdentifier: "CharacterDetailsViewController") as? CharacterDetailsViewController else {
            return
        }
        viewController?.navigationController?.pushViewController(nextViewController, animated: true)
    }
}