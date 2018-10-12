#  Объекты и классы

Чтобы создать класс используйте оператор class и дальше имя класса. Объявление свойств класса пишется таким же способом, как и объявление константы или переменной, за исключением того, что они объявляются в пределах класса. Подобно этому, методы класса объявляются тем же способом что и функции.

```swift
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

Экземпляры класса создаются с помощью добавления скобок после имени класса. Получить доступ к свойствам и методам класса можно через точку.

```swift
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
```

В этой версии класса Shape отсутствует кое-что важное, а именно инициализатор. Он нужен для того, чтобы подготовить класс, когда создается экземпляр класса. Для его создания используйте оператор init.

```swift
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

Обратите внимание, как self используется, чтобы различать name - как свойство класса, и name - как аргумент инициализатора. Аргументы инициализатору передаются как вызов функции при создании экземпляра класса. Каждому свойству должно присваиваться значение: либо через объявление (как с numberOfSides), либо через инициализатор (как с name).

Используйте deinit для создания деинициализатора, если вам нужно выполнить некоторую очистку, прежде чем объект будет освобожден.

Подклассы разделяются от имени родительского класса двоеточием. Для классов нет необходимости каждый раз писать родительский класс, его можно включить по мере необходимости.

Методы подкласса, которые переопределяют методы родителя, отмечаются с помощью оператора override. При попытке переопределения без override компилятор выдаст ошибку. Компилятор также обнаруживает методы с override, которые на самом деле не переопределяют никакие методы супер класса.

```swift
class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
```

В дополнение к простым хранящимся свойствам, свойства могут иметь также getter и setter.

```swift
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)
```

В setter для свойства perimeter, новое значение имеет неявное имя newValue. Вы можете явно назначить другое имя, указав его в скобках после set.

Обратите внимание, что инициализатор для EqualiateralTriangle имеет три разных шага:

1. Устанавливает значение свойств объявляемых подклассом.
2. Вызывает инициализатор родителя.
3. Изменяет значение свойств, объявленных родителем. Любые дополнительные работы по начальной установке, которые используют методы, getter’ы или setter’ы могут быть включены в этом месте.

Если вам не нужно вычислять свойство, но по прежнему нужно предоставить код, который будет запущен до и после установки нового значения - используйте willSet и didSet. Например, класс ниже проверяет что длина стороны треугольника всегда такая же, как длина стороны его квадрата:

```swift
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
```

Когда вы работаете с опциональными значениями, вы можете написать ? перед такими операциями как: методы, свойства или индексаторы. Если значение перед ? - nil, то все что после ? игнорируется и значение всего выражения становится nil. В противном случае, опциональное значение извлекается, и все что после ? выполняется. В обоих случаях значение всего выражения является опциональным значением.

```swift
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
```
