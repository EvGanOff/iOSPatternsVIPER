//
//  Interactor.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation

// Object
// Protocol
// Link to presenter

protocol AnyInteractorProtocol: AnyObject {
    var presenter: AnyPresenterProtocol? { get set }

    func getSettingsTable ()
}

class UserInteractor: AnyInteractorProtocol {

    var presenter: AnyPresenterProtocol?

    func getSettingsTable() {
        let entity = SettingsModel()
        self.presenter?.interactorDidFetchSettingsPoints(with: [entity])
    }
}
