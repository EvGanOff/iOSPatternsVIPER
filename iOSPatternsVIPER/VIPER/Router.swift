//
//  Router.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation
import UIKit

//Object
//Entry point

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {

    var entry: EntryPoint? { get }

    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    var entry: EntryPoint?

    static func start() -> AnyRouter {
        let router = UserRouter()

        var view: AnyView = UserViewController()
        var interactor: AnyInteractor = UserInteractor()
        var presentor: AnyPresenter = UserPresenter()

        view.presenter = presentor

        interactor.presenter = presentor

        presentor.router = router 
        presentor.view = view
        presentor.interactor = interactor
        
        router.entry = view as? EntryPoint

        return router
    }
}
