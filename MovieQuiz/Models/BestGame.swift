//
//  GameRecord.swift
//  MovieQuiz
//
//  Created by Константин Букин on 29.07.2023.
//

import Foundation

struct GameRecord: Codable, Comparable {
    let correct: Int // количество правильных ответов
    let total: Int // количество вопросов квиза
    let date: Date // дата завершения раунда
    
    static func < (lhs: GameRecord, rhs: GameRecord) -> Bool {
        return lhs.correct < rhs.correct
    }
}

extension 
