//
//  Presenter.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation
import UIKit

// Object
// Protocol
// Link to view, interactor, router

protocol AnyPresenter {
    var view: AnyView? { get set }
    var interactor: AnyInteractor? { get set }
    var router: AnyRouter? { get set }

    func interactorDidFetchSettings(with result: SettingsModel)

}

class UserPresenter: AnyPresenter {
    var interactor: AnyInteractor?

    var view: AnyView?

    var router: AnyRouter?

    init() {
        interactor?.getSettingsTable()
    }

    func interactorDidFetchSettings(with result: SettingsModel) {
        view?.getSettingsTable(with: result)
    }


}
