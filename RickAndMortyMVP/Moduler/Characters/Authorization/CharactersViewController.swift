//
//  CharactersViewController.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

import UIKit

// Отвечает за отображение пользовательского интерфейса и обработку пользовательских взаимодействий.

class CharactersViewController: UIViewController, CharactersViewProtocol {
    
    
    
    @IBOutlet weak var idTextField: UITextField!
    
    var presenter: CharactersPresenter!
    var router: CharactersRouter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func nextScreenNavigation(_ sender: Any) {
        navigateToNextScreen()
    }
}
