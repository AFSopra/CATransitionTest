//
//  DetailView.swift
//  CATransitionTest
//
//  Created sopra on 17/11/20.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class DetailView: UIViewController {
    var presenter: DetailPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Detail"
    }

    @IBAction private func popToHomeView() {
        self.presenter.popToHomeView()
    }

    @IBAction private func popToHomeViewCATransition() {
        self.presenter.popToHomeViewCATransition()
    }
}

extension DetailView: DetailViewProtocol {}
