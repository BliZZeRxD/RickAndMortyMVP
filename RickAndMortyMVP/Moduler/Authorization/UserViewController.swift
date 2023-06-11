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
    var userID: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        userID = idTextField.text ?? ""
    }

    @IBAction func nextScreenNavigation(_ sender: Any) {
        presenter.nextButtonTapped(userID: userID)
    }
    func goToNextScreen(userID: String) {
        let userDetailsViewController = CharacterDetailsAssembly.createModule(userID: userID)
        userDetailsViewController.modalPresentationStyle = .fullScreen
        present(userDetailsViewController, animated: true, completion: nil)
    }
}
