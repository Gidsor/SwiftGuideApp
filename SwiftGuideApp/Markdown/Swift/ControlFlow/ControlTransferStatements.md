# Операторы передачи управления
Операторы передачи управления меняют последовательность исполнения вашего кода, передавая управление от одного фрагмента кода другому. В Swift есть пять операторов передачи управления:

+ continue
+ break
+ fallthrough
+ return
+ throw

## Оператор Continue
Оператор continue говорит циклу прекратить текущую итерацию и начать новую. Он как бы говорит: "Я закончил с текущей итерацией", но полностью из цикла не выходит.

Следующий пример убирает все пробелы и гласные в нижнем регистре из строки, для того чтобы создать загадочную фразу-головоломку:

```swift
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    } else {
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)
// Выведет "grtmndsthnklk"
```
Пример выше вызывает оператор continue, когда он находит соответствие с гласными звуками или пробелом, вызывая тем самым прекращение текущей итерации и начало новой.

## Оператор Break
Оператор break останавливает выполнение всей инструкции управления потоком. Оператор break может быть использован внутри инструкции switch или внутри цикла, когда вы хотите остановить дальнейшее выполнение switch или цикла раньше, чем он должен закончиться сам по себе.

### Оператор Break в цикле
Когда оператор break используется внутри цикла, то он немедленно прекращает работу цикла, и выполнение кода продолжается с первой строки после закрывающей скобки цикла (}). Никакой последующий код из текущей итерации цикла выполняться не будет, и никакие дальнейшие итерации цикла не будут запускаться.

### Оператор Break в инструкции Switch
Когда оператор break используется внутри инструкции switch, то он прекращает исполнение кода конкретного случая и перекидывает исполнение на первую строку после закрывающей скобки (}) инструкции switch.

Так же оператор break может использоваться для сопоставления или игнорирования кейсов в инструкции switch. Так как инструкция switch исчерпывающая и не допускает пустых кейсов, то иногда бывает необходимо умышленно соответствовать или игнорировать кейсы для того, чтобы сделать ваши намерения ясными. Вы делаете это, когда пишите слово break в теле кейса, который вы хотите пропустить. Когда этот кейс попадает под сравнение, то break сразу завершает работу всей инструкции switch.

  Кейс в инструкции switch, который содержит только комментарий, при компиляции выдаст ошибку компиляции. Комментарии - это не утверждения, и они не дают возможности игнорировать кейсы. Если вы хотите игнорировать кейс switch, используйте break.
  
Следующий пример переключается на символьные значение Character и определяет, является ли символ целым числом на одном из четырех языков. Несколько языков включены в каждый кейс для краткости:

```swift
let numberSymbol: Character = "三"  // Цифра 3 в упрощенном Китайском языке
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// Выведет "The integer value of 三 is 3."
```

Этот пример проверяет numberSymbol на наличие в нем целого числа от 1 до 4 на арабском, латинском, китайском или тайском языках. Если совпадение найдено, то один из кейсов switch устанавливает опциональную переменную Int?, названную possibleIntegerValue в подходящее целочисленное значение.

После того как инструкция switch выполнена, пример использует опциональную привязку для определения наличия величины. Переменная possibleIntegerValue имеет неявное начальное значение равное nil в силу того, что она имеет опциональный тип, таким образом опциональная привязка пройдет успешно только в том случае, если possibleIntegerValue будет иметь актуальное значение одного из четырех первых кейсов инструкции switch.

Так как в примере выше не практично перечислять каждое возможное значение Character, то кейс default улавливает все остальные варианты символов, которые не соответствуют первым четырем кейсам. Кейсу default не надо предпринимать какие-либо действия, так что там прописан только оператор break. После того как срабатывает кейс default, срабатывает и break, что прекращает действие инструкции switch и код продолжает свою работу с if let.

## Оператор Fallthrough
Инструкция switch в Swift не проваливается из каждого кейса в следующий. Напротив, как только находится соответствие с первым кейсом, так сразу и прекращается работа всей инструкции. А в языке C, работа инструкции switch немного сложнее, так как требует явного прекращения работы при нахождении соответствия словом break в конце кейса, в противном случае при соответствии мы провалимся в следующий случай и так далее пока не встретим слово break. Избежание провалов значит что инструкция switch в Swift более краткая и предсказуемая, чем она же в C, так как она предотвращает срабатывание нескольких кейсов по ошибке.

Если вам по какой-то причине нужно аналогичное проваливание как в C, то вы можете использовать оператор fallthrough в конкретном кейсе. Пример ниже использует fallthrough для текстового описания целого числа:

```swift
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Выведет "The number 5 is a prime number, and also an integer."
```

В примере мы объявляем новую переменную типа String, названную description и присваиваем ей исходное значение. Потом мы определяем величину integerToDescribe, используя инструкцию switch. Если значение integerToDescribe одно из значений списка кейса, то мы получаем текстовое описание значения, которое дополняется значением, которое находится в default, так как на уровень выше в сработавшем кейсе стоит ключевое слово fallthrough, после чего завершается работа инструкции switch.

Если значение integerToDescribe не принадлежит списку значений нашего единственного кейса, то срабатывает кейс по умолчанию, который имеет все оставшиеся значения, невошедшие в первый кейс, и integerToDescribe получает значение только то, что есть в default.

После того как сработала инструкция switch, мы получаем описание числа, используя функцию print(_:separator:terminator:). В нашем примере мы получаем 5, что корректно определено как простое число.

  Ключевое слово fallthrough не проверяет условие кейса, оно позволяет провалиться из конкретного кейса в следующий или в default, что совпадает со стандартным поведением инструкции switch в языке C.

## Маркированные инструкции
Вы можете размещать циклы или инструкции switch внутри других циклов или switch инструкций, создавая тем самым сложное течение исполнения кода. Однако циклы и инструкции switch могут иметь break, что может прервать выполнение кода преждевременно. В общем иногда полезно явно указывать какой цикл или какую инструкцию switch вы хотите прервать оператором break. Так же, если у вас есть несколько вложенных циклов, то может быть полезным явное указание того, на какой цикл именно будет действовать оператор continue.

Для всех этих целей мы можем маркировать цикл или инструкцию switch маркером инструкций и использовать его вместе с оператором break или оператором continue для предотвращения или продолжения исполнения маркированной инструкции.

Маркированные инструкции обозначаются меткой в той же строке, что и ключевое слово начала инструкции, которое следует после метки через двоеточие. Ниже приведен пример синтаксиса цикла while, хотя принцип работы маркера такой же со всеми инструкциями:

```swift
имя маркера : while условие {
     исполняемый код
}
```

В дальнейшем примере мы будем использовать break, continue с маркированным циклом while для адаптированной версии Змеи и Лестницы, которую вы видели ранее в "Циклы While". В этот раз у нас появилось новое правило:

+ Чтобы победить вы должны попасть точно на клетку 25.


Если результат броска кубика дает вам ходов более чем на 25 клетку, то вы должны бросить еще раз, до тех пор пока не попадете точно на клетку 25.

Игровая зона доски осталась такой же как и была:

![image](https://user-images.githubusercontent.com/16274235/47933975-e8debd00-def7-11e8-805f-bf586bd48008.png)

Величины finalSquare, board, square и diceRoll инициализируются точно так же как и в прошлых примерах игры:

```swift
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
```

В этой версии игры используется цикл while и инструкция switch для воплощения логики игры. Цикл while маркер названный gameLoop, для индикации главного цикла игры.

Условие цикла while square != finalSquare показывает, что теперь нам нужно попасть строго на клетку 25:

```swift
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        //после броска кубика мы попадаем на клетку 25, игра окончена
        break gameLoop
    case let newSquare where newSquare > finalSquare:
         //мы кинули кубик на слишком большое значение, значит нам нужно кинуть снова
        continue gameLoop
    default:
        //допустимое движение по игровому полю, двигаемся
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")
```

Игральная кость бросается в начале каждого цикла. Прежде чем двигаться по доске идет проверка в инструкции switch на валидность хода, потом обрабатывает его, если такое движение допустимо:

+ Если игральная кость двигает игрока на последнюю клетку, игра заканчивается. Оператор break с маркером gameLoop перекидывает исполнение кода на первую строку кода после цикла while, которая и завершает игру.
+ Если игральная кость двигает игрока далее чем на последнюю клетку, то такое движение считается некорректным, и игроку приходится кидать кость еще раз. Оператор continue с маркером gameLoop заканчивает итерацию и начинает новую.
+ Во всех случаях движение игрока на diceRoll клеток допустимо и каждый ход идет проверка логики игры на наличие лестниц и змей. Когда кончается итерация, мы возвращаемся на начало цикла while, где проверяется условие на необходимость дальнейших ходов.

Если оператор break не использует маркер gameLoop, то он будет прерывать выполнение инструкции switch, а не всего цикла while. Но используя маркер gameLoop мы можем указать какое исполнение инструкции нужно прервать.

  Обратите внимание так же и на то, что нет необходимости использовать маркер gameLoop, когда мы обращаемся к continue gameLoop для того, чтобы перейти к следующей итерации. В этой игре всего один цикл, так что нет никакой двусмысленности на какой цикл этот оператор может вообще воздействовать. Однако и никакого вреда нет в том, что мы явно указали gameLoop маркер в строке с оператором continue. Более того, делая так мы делаем наш код нагляднее и восприятие логики игры становится более ясным.
