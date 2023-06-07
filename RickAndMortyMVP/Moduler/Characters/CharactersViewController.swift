//
//  CharactersViewController.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

//Исползуется для передачи данных между презентером и view

import Foundation
import UIKit

class CharactersViewController: UIViewController, CharactersViewProtocol {
   
    
    var presenter: CharactersPresenterProtocol?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func navigateToDetails() {
        let nextViewController = CharacterDetailsAssembly.createModule()
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    
}
