//
//  Question.swift
//  AnimalQuiz
//
//  Created by user207855 on 12/20/21.
//

enum ResponseType {
    case single
    case multiple
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question {
    static func getQuestion() -> [Question] {
        return [
            Question(text: "Какую еду ты предпочитаешь?",
                     type: .single,
                     answers: [
                        Answer(text: "Мясо", type: .dog),
                        Answer(text: "Рыбу", type: .cat),
                        Answer(text: "Морковь", type: .rabbit),
                        Answer(text: "Кукурузу", type: .turtle)
                     ]
            ),
            Question(text: "Что ты любишь делать?",
                     type: .multiple,
                     answers: [
                        Answer(text: "Плавать", type: .dog),
                        Answer(text: "Спать", type: .cat),
                        Answer(text: "Обниматься", type: .rabbit),
                        Answer(text: "Кушать", type: .turtle)
                     ]
            ),
            Question(text: "На сколько сильно ты любишь кататься в машине?",
                     type: .range,
                     answers: [
                        Answer(text: "Ненавижу", type: .dog),
                        Answer(text: "Равнодушно", type: .cat),
                        Answer(text: "Люблю", type: .rabbit),
                        Answer(text: "Обожаю", type: .turtle)
                     ]
            )
        ]
    }
}
