import UIKit

struct QuizQuestion {
    // строка с названием фильма, совпадает с названием картинки афишы фильма в Assets
    let image: Data
    // строка с вопросом о рейтинге фильма
    let text: String
    // булевое значение (true, false), правильный ответ на вопрос
    let correctAnswer: Bool
}
