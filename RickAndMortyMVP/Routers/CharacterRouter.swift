//
//  CharacterRouter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import Foundation
import UIKit

class CharactersRouter: CharactersRouterProtocol {
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
