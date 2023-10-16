//
//  GameRecord.swift
//  MovieQuiz
//
//  Created by Константин Букин on 29.07.2023.
//

import Foundation

struct BestGame {
    let correct: Int // количество правильных ответов
    let total: Int // количество вопросов квиза
    let date: Date // дата завершения раунда
}

extension BestGame: Comparable, Codable {
    
    private var accuracy: Double {
        guard total != 0 else {
            return 0
        }
        
        return Double(correct) / Double(total)
    }
    static func < (lhs: BestGame, rhs: BestGame) -> Bool {
        return lhs.correct < rhs.correct
    }
}
