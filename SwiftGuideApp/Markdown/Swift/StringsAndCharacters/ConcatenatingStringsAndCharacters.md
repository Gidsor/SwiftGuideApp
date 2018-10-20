# Конкатенация строк и символов
Значения типа String могут быть добавлены или конкатенированы с помощью оператора сложения (+):

```swift
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome равен "hello there"
```

Вы можете добавить значение типа String к другому, уже существующему значению String, с помощью комбинированного оператора сложения и присвоения (+=):

```swift
var instruction = "look over"
instruction += string2
// instruction равен "look over there"
```

Вы можете добавить значение типа Character к переменной типа String, используя метод String append:

```swift
let exclamationMark: Character = "!"
welcome.append(exclamationMark)
// welcome равен "hello there!"
```

    Вы не можете добавить String или Character к уже существующей переменной типа Character, потому что значение типа Character должно состоять только из одиночного символа.

Если вы используете многострочные строковые литералы для построения более длинной строки, то вы захотите, чтобы каждая строка заканчивалась разрывом строки, включая последнюю. Например:

```swift
let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)
// Prints two lines:
// one
// twothree

let goodStart = """
one
two

"""
print(goodStart + end)
// Prints three lines:
// one
// two
// three

```

В коде выше конкантенация badStart вместе с end создают двухстрочную строку, которая имеет не тот результат, на который мы расчитывали. Из-за того, что последняя строка badStart не содержит символа переноса строки, она соединяется с первой строкой end. И наоборот, если оба конца строки goodStart будут заканчиваться сиволом переноса строки, то результат будет именно тот, что мы и хотим.
