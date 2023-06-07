//
//  UserPresenter.swift
//  RickAndMortyMVP
//
//  Created by Ayan on 07.06.2023.
//

import Foundation

class UserPresenter: UserPresenterProtocol{
    
    weak var view: UserViewProtocol?
    
    init(view: UserViewProtocol) {
        self.view = view
    }
}
