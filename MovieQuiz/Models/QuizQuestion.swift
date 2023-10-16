import UIKit

struct QuizQuestion {
    // строка с названием фильма, совпадает с названием картинки афишы фильма в Assets
    let image: String
    // строка с вопросом о рейтинге фильма
    let text: String = "Рейтинг этого фильма больше чем 6?"
    // булевое значение (true, false), правильный ответ на вопрос
    let correctAnswer: Bool
}
