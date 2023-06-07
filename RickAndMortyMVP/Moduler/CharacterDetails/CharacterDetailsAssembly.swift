//
//  CharacterDetailsAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import Foundation
import UIKit

struct CharacterDetailsAssembly {

    static func createModule() -> UIViewController {

        let storyboard = UIStoryboard(name: "CharacterDetailsViewController", bundle: .main)

        guard let viewController = storyboard.instantiateInitialViewController()
                as? CharacterDetailsViewController else {
            fatalError()
        }
        return viewController
    }
}
