//
//  DetailRouter.swift
//  CATransitionTest
//
//  Created sopra on 17/11/20.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class DetailRouter {
    weak var view: DetailView!

    init(withView view: DetailView) {
        self.view = view
    }

    static func assembleModule(withinNavController: Bool = false) -> UIViewController {
        let viewController = viewControllerFromStoryboard()
        let router = DetailRouter(withView: viewController)
        let interactor = DetailInteractor()
        let presenter = DetailPresenter(withView: viewController, interactor: interactor, router: router)

        viewController.presenter = presenter

        if withinNavController {
            let navigationController = UINavigationController(rootViewController: viewController)
            return navigationController
        }

        return viewController
    }

    static func viewControllerFromStoryboard() -> DetailView {
        return DetailView(nibName: "DetailView", bundle: Bundle.main)
    }
}

extension DetailRouter: DetailRouterProtocol {
    func popToHomeView() {
        view.navigationController?.popViewController(animated: true)
    }

    func popToHomeViewCATransition() {
        view.navigationController?.popViewController(animated: true)
    }
}
