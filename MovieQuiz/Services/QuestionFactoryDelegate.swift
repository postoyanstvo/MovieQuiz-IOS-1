//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Константин Букин on 13.07.2023.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}
