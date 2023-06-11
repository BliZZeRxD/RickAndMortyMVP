//
//  CharacterPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 08.06.2023.
//

import Foundation

class CharacterPresenter: CharacterPresenterProtocol {

    var resultText: String?
    var view: CharacterViewProtocol?

    init(resultText: String?, view: CharacterViewProtocol) {
        self.resultText = resultText
        self.view = view
    }

    func viewDidLoad() {
        getUsers()
    }

    public func getUsers() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/\(resultText)") else {return}
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
