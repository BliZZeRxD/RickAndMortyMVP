//
//  CharactersAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

import Foundation
import UIKit

// Фабрика для создания экземпляра CharactersViewController

struct CharactersAssembly{
    
    static func createModule() -> CharactersViewController{
        
        let storyboard = UIStoryboard(name: "CharactersViewController", bundle: .main)
        
        guard let viewController = storyboard.instantiateInitialViewController() as? CharactersViewController else {
            fatalError()
        }
//        let presenter = CharactersPresenter(view: viewController)
//        
//        viewController.presenter = presenter
        
        return viewController
    }
}
