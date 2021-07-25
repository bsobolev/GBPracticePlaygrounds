//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

class Figure {
    var draw: (() -> Void)?                  // замыкание
    deinit {
        print("Фигура уничтожена")
    }
}
class Screen {                             // экран
    var figureColor: String               // цвет, которым рисуем фигуры
    let figure: Figure                   // свойство для хранения фигуры
    init(color: String) {
        self.figureСolor = color
        figure = Figure()               // создали фигуру
// создали замыкание для отрисовки, использовали в нем self.figureColor
        figure.draw = { [weak self] in // указываем, что self передается как weak
            print("Рисуем квадрат \(self!.figureColor)  цвета")
        }
    }
    deinit {
        print("Экран уничтожена")
    }
}
var screen: Screen? = Screen(color: "красного")
screen?.figure.draw?()
screen = nil                        // убрали ссылку на screen, объект из памяти выгрузился

