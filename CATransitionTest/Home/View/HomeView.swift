//
//  HomeView.swift
//  CATransitionTest
//
//  Created sopra on 17/11/20.
//  Copyright © 2020 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class HomeView: UIViewController {
    var presenter: HomePresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Home"
    }

    @IBAction private func buttonTapped(_ sender: UIButton) {
        self.presenter.presentDetailView()
    }
}

extension HomeView: HomeViewProtocol {}
