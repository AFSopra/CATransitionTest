//
//  CustomProtocols.swift
//  CATransitionTest
//
//  Created by sopra on 17/11/20.
//

import Foundation

protocol CustomNavigation {
    func popToRootCATransition(animated: Bool, completion: @escaping (() -> ()))
}
