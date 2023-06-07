//
//  UserPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import Foundation

class UserPresenter: UserPresenterProtocol {

    weak var view: UserViewProtocol?
    var userVC: UserViewController?

    init(view: UserViewProtocol) {
        self.view = view
    }
    public func getUsers() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/\(String(describing: userVC?.resultText))") else {return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let users = try JSONDecoder().decode(Character.self, from: data)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
