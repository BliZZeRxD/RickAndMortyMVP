//
//  UserAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

import Foundation
import UIKit

// Фабрика для создания экземпляра CharactersViewController

struct UserAssembly{
    
    static func createModule() -> UserViewController{
        
        let storyboard = UIStoryboard(name: "UserViewController", bundle: .main)
        
        guard let viewController = storyboard.instantiateInitialViewController() as? UserViewController else {
            fatalError()
        }
        
        let presenter = UserPresenter(view: viewController)

        viewController.presenter = presenter
        
        return viewController
    }
}
