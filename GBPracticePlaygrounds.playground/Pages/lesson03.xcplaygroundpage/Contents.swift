

import UIKit

fileprivate struct Rectangle {                  // эта структура доступна теперь только внутри файла
    private var sideA: Double                  // стороны доступны теперь только внутри структуры
    private var sideB: Double
    var perimiter: Double {
        get {
            return sideA * 2 + sideB * 2
        }
    }
    init() {
        sideA = 5
        sideB = 10
    }
    init?(sideA: Double, sideB: Double) {
        guard sideA > 0 && sideB > 0  else {   // проверим, что стороны положительные
            return nil                        // если они отрицательные, вернем nil
        }
                                             // если все нормально, создаем экземпляр структуры
        self.sideA = sideA
        self.sideB = sideB
    }
}
