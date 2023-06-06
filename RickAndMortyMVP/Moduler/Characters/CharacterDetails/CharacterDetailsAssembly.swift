//
//  CharacterDetailsAssembly.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import Foundation
import UIKit

// Фабрика для создания экземпляра CharacterDetailsAssembly

struct CharacterDetailsAssembly{
    
    static func createModule() -> CharacterDetailsViewController{
        
        let storyboard = UIStoryboard(name: "CharacterDetailsViewController", bundle: .main)
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "CharacterDetailsViewController") as? CharacterDetailsViewController else {
            fatalError()
        }
        let presenter = CharactersPresenter(view: viewController)
        
        viewController.presenter = presenter
        
        return viewController
    }
}
