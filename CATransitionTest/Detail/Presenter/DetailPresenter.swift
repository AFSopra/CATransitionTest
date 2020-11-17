//
//  DetailPresenter.swift
//  CATransitionTest
//
//  Created sopra on 17/11/20.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

final class DetailPresenter {
    var view: DetailViewProtocol!
    let interactor: DetailInteractorProtocol
    let router: DetailRouterProtocol

    init(withView view: DetailViewProtocol, interactor: DetailInteractorProtocol, router: DetailRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension DetailPresenter: DetailPresenterProtocol {
    func popToHomeViewCATransition(animated: Bool, completion: @escaping () -> ()) {
        self.router.popToRootCATransition(animated: true, completion: completion)
    }

    func popToHomeView() {
        self.router.popToHomeView()
    }
}
