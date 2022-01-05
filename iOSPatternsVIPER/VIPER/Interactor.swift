//
//  Interactor.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation
import UIKit

// Object
// Protocol
// Link to presenter

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }

    func getSettingsTable ()
}

class UserInteractor: AnyInteractor {


    var presenter: AnyPresenter?

    func getSettingsTable() {
        let entity = SettingsModel()
        self.presenter?.interactorDidFetchSettings(with: entity)
    }
}
