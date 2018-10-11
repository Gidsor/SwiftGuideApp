# Управление потоком
Для создания условий используйте if и switch, а для создания циклов используйте for-in, while, и repeat-while. Скобки вокруг условий или циклов не обязательны. Фигурные скобки вокруг тела условия или цикла — обязательны.

```swift
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
```

В инструкции if, условие должно быть Boolean выражение — это означает, что такой код как if score {…} ошибочный, никакого неявного сравнения с нулем не будет.

Вы можете использовать if и let вместе, чтобы работать со значениями, которые могут отсутствовать. Эти значения представлены как опциональные. Опциональные значения либо содержат значение, либо содержат nil, который обозначает отсутствие значения. Можно писать вопросительный знак (?) после типа значения, чтобы обозначить что оно опциональное.

```swift
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
```

Если опциональное значение nil, то условие считается false и код в фигурных скобках пропускается. Иначе, опциональное значение извлекается и назначается константе написанной после let, что делает извлеченное значение доступным внутри блока кода.

Другой способ обработки опциональных значений - это предоставление дефолтного значения, используя оператор ??. Если опциональное значение отсутствует, то будет использовано дефолтное значение вместо него.

```swift
let nickName: String? = nil
let fullName: String = "John Appleseed" 
let informalGreeting = "Hi \(nickName ?? fullName)"
```

Switch поддерживает любые данные и множество операторов сравнения — они не ограничены целыми числами и сравнениями.

```swift
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
```

Вы обратили внимание, как мы можем использовать let в примере, чтобы создать константу, значение которой соответствует условию?

После исполнения кода внутри switch блока case, который попал под условие, программа выходит из инструкции switch. Исполнение не продолжается к следующему блоку сase - это означает, что не нужно прерывать switch после каждого блока case с помощью оператора break.

Вы можете использовать for-in, чтобы выполнить итерацию по элементам словаря, указывая пару имен для каждой пары ключ-значение.

```swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
```

Используйте while чтобы повторять код, пока условие не поменяется. Условие цикла может также быть в конце, если нужно чтобы цикл выполнился хотя-бы один раз.

```swift
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
```

Вы можете ставить индекс, используя оператор ..< чтобы создать диапазон индексов:

```swift
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)
```

Используйте ..< чтобы создать диапазон который будет пропускать последнее значение, либо используйте ... – диапазон который включает оба значения, и начальное и конечное.
