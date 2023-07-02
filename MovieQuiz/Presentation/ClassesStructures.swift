import UIKit

// вью модель для состояния "Вопрос показан"
struct QuizStepViewModel {
    // картинка с афишей фильма с типом UIImage
    let image: UIImage
    // вопрос о рейтинге квиза
    let question: String
    // строка с порядковым номером этого вопроса (ex. "1/10")
    let questionNumber: String
}

// для состояния "Результат квиза"
struct QuizResultsViewModel {
  let title: String
  let text: String
  let buttonText: String
}

struct QuizQuestion {
    // строка с названием фильма, совпадает с названием картинки афишы фильма в Assets
    let image: String
    // строка с вопросом о рейтинге фильма
    let text: String = "Рейтинг этого фильма больше чем 6?"
    // булевое значение (true, false), правильный ответ на вопрос
    let correctAnswer: Bool
}
