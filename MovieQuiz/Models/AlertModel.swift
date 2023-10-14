//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Константин Букин on 16.07.2023.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    var buttonAction: () -> Void
}
