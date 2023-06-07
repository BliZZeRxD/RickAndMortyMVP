//
//  UserViewController.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 06.06.2023.
//

import UIKit

// Отвечает за отображение пользовательского интерфейса и обработку пользовательских взаимодействий.

class UserViewController: UIViewController, UserViewProtocol {
        
    @IBOutlet weak var idTextField: UITextField!
    
    var presenter: UserPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func navigateToDetails() {
        
    }
    
    @IBAction func nextScreenNavigation(_ sender: Any) {
        
    }
    
}
