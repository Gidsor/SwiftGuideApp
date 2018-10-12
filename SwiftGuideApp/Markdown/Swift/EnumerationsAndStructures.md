# Перечисления и структуры
Используйте слово enum для создания перечислений. Подобно классам и другим именованным типам, перечисления могут иметь методы связанные с ним.

```swift
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
```

По умолчанию Swift присваивает исходные значения, начиная с нуля и увеличивая их на единицу каждый раз, но вы можете изменить это поведение, явно указав значения. В приведенном выше примере, Ace явно присвоено исходное значение 1, остальные исходные значения присваиваются по порядку. Вы также можете использовать строки или числа с плавающей точкой в качестве типа исходного значения перечисления. Используйте свойство rawValue для доступа к исходному значению элемента перечисления.

Используйте инициализатор init?(rawValue:) для того, чтобы создать экземпляр перечисления из исходного значения:

```swift
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}
```

Значения элементов перечисления - это реальные значения, а не просто еще один способ написания исходных значений. Фактически, в тех случаях, когда нет ясного представления об исходном значении, вы можете их не писать.

```swift
enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
            case .spades:
            return "spades"
            case .hearts:
            return "hearts"
            case .diamonds:
            return "diamonds"
            case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
```

Обратите внимание на два способа обращения к элементам перечисления Hearts выше. Во время присвоения значения константе hearts, обращение к элементу перечисления Suit.hearts происходит через его полное имя, потому что константа не имеет явно указанного типа. Внутри switch, обращение к перечислению происходит через сокращённую форму .hearts, потому что значение self уже известно, и оно Suit. Вы можете использовать сокращенную форму каждый раз, когда тип значения известен.

Если перечисление имеет raw значения, то эти значения определены в качестве части определения перечисления, что значит, что у каждого конкретного экземпляра кейса всегда будет одно и то же raw значение. Другой вариант использования кейсов - создание значений ассоциированных с кейсом. Эти значения определяются, когда вы создаете экземпляр, и эти значения могут быть разными для различных экземпляров кейсов перечисления. Вы можете считать, что ассоциативные значения ведут себя как свойства хранения экземпляра кейса перечисления. Например, представим, что у нас есть кейс, который занимается получением данных времени восхода солнца и заката солнца с сервера. Сервер либо предоставит нам затребованную информацию, либо, в случае ошибки, даст нам описание, что пошло не так.

```swift
enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
    case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
    case let .failure(message):
    print("Failure...  \(message)")
}
```

Обратите внимание, как время восхода и время заката получаются из значения от ServerResponse в виде совпадающего случая в кейсе инструкции switch.

Используйте оператор struct для создания структур. Структуры поддерживают многие характерные черты классов, в том числе методы и инициализаторы. Одно из наиболее важных различий между классами и структурами в том, что структуры всегда копируются когда они передаются в коде, а классы, передаются по ссылке.

```swift
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
```
