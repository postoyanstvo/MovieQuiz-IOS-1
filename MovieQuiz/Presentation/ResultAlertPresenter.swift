//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Константин Букин on 16.07.2023.
//

import Foundation
import UIKit

final class AlertPresenterImplementation{
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
}


extension AlertPresenterImplementation: AlertPresenterProtocol {
    func show(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) {_ in 
            alertModel.buttonAction()
        }

        alert.addAction(action)
        
        viewController?.present(alert, animated: true)
    }
}
