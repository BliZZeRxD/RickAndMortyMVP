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

    var resultText = ""
    var presenter: UserPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextScreenNavigation(_ sender: Any) {
        if let enteredText = idTextField.text, !enteredText.isEmpty {
            resultText = enteredText
        } else {
            printContent("Enter Your ID!")
        }
    }
}
