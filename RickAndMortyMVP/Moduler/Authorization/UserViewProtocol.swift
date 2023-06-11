//
//  UserViewProtocol.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import UIKit

protocol UserViewProtocol: UIViewController, UserRouterProtocol {
    func goToNextScreen(userID: String)
//    func presentUsers(users:Character)
//    func presentAlert(title: String, message: String)
}
