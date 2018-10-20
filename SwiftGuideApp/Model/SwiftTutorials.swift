//
//  SwiftTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class SwiftTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = SwiftTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        tutorials.append(createWelcomeTutorials())
        tutorials.append(createBasicTutorials())
        tutorials.append(createBasicOperatorsTutorials())
        tutorials.append(createStringsAndCharactersTutorials())
    }
    
    private func createWelcomeTutorials() -> [Tutorial] {
        let header = "Быстрый тур по Swift"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "О языке Swift", pathMark: "AboutSwift", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Совместимость версий Swift", pathMark: "VersionSwift", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Переменные", pathMark: "Variables", image: "variable-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Управление потоком", pathMark: "ControlFlow", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Функции и замыкание", pathMark: "FunctionsAndClosures", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Объекты и классы", pathMark: "ObjectsAndClasses", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Перечисления и структуры", pathMark: "EnumerationsAndStructures", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Протоколы и расширения", pathMark: "ProtocolsAndExtensions", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Обработка ошибок", pathMark: "ErrorHandling", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Универсальные типы", pathMark: "Generics", image: "swift-icon"))
        
        return tutorials
    }
    
    private func createBasicTutorials() -> [Tutorial] {
        let header = "Основы"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Константы и переменные", pathMark: "ConstantsAndVariables", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Комментарии", pathMark: "Comments", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Целые числа", pathMark: "Integers", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Числа с плавающей точки", pathMark: "FloatingPointNumbers", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Строгая типизация и Вывод типов", pathMark: "TypeSafetyAndTypeInference", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Числовые литералы", pathMark: "NumericLiterals", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Преобразования числовых типов", pathMark: "NumericTypeConversion", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Псевдонимы типов", pathMark: "TypeAliases", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Кортежи", pathMark: "Tuples", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Опциональные типы", pathMark: "Optionals", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Обработка ошибок", pathMark: "ErrorHandlingBasic", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Утверждения и предусловия", pathMark: "AssertionsAndPreconditions", image: "swift-icon"))
        
        return tutorials
    }
    
    private func createBasicOperatorsTutorials() -> [Tutorial] {
        let header = "Базовые операторы"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Операторы", pathMark: "Operators", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Терминология", pathMark: "Terminology", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Оператор присваивания", pathMark: "AssignmentOperator", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Арифметические операторы", pathMark: "ArithmeticOperators", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Cоставные операторы присваивания", pathMark: "CompoundAssignmentOperators", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Операторы сравнения", pathMark: "ComparsionOperators", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Тернарный условный оператор", pathMark: "TernaryConditionalOperator", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Оператор объединения по nil", pathMark: "NilCoalescingOperator", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Операторы диапазона", pathMark: "RangeOperators", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Логические операторы", pathMark: "LogicalOperators", image: "swift-icon"))
        
        return tutorials
    }
    
    private func createStringsAndCharactersTutorials() -> [Tutorial] {
        let header = "Строки и символы"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Строки и символы", pathMark: "StringsAndCharacters", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Строковые литералы", pathMark: "StringLiterals", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Инициализация пустых строк", pathMark: "InitializingAnEmptyString", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Изменчивость строк", pathMark: "StringMutability", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Строка является типом значения", pathMark: "StringsAreValueTypes", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Работа с символами", pathMark: "WorkingWithCharacters", image: "swift-icon"))
        
        
        return tutorials
    }

}
