# Преобразования числовых типов
Используйте Int для всех целочисленных констант и переменных в коде, даже когда, они отрицательны. Использование стандартного типа целых чисел в большинстве случаев означает, что ваши целочисленные константы и переменные будут совместимы в коде и будут соответствовать типу, выведенному из целочисленного литерала.

Используйте другие типы целых чисел, только если вам это действительно нужно, например, когда используются данные с заданным размером из внешнего источника, или для производительности, использования памяти или других важных оптимизаций. Использование типов с определенным размером в таких ситуациях помогает уловить случайное переполнение значения и неявно задокументированные данные, используемые в коде.

## Преобразования целых чисел
Диапазон значений, который может храниться в целочисленных константах и переменных, различен для каждого числового типа. Int8 константы и переменные могут хранить значения между -128 и 127, тогда как UInt8 константы и переменные могут хранить числа между 0 и 255. Если число не подходит для переменной или константы с определенным размером, выводится ошибка во время компиляции:

```swift
let cannotBeNegative: UInt8 = -1
// UInt8 не может хранить отрицательные значения, поэтому эта строка выведет ошибку
let tooBig: Int8 = Int8.max + 1
// Int8 не может хранить число больше своего максимального значения,
// так что это тоже выведет ошибку
```

Поскольку каждый числовой тип может хранить разный диапазон значений, в зависимости от конкретного случая вам придется обращаться к преобразованию числовых типов. Этот подход предотвращает скрытые ошибки преобразования и помогает сделать причину преобразования понятной. Чтобы преобразовать один числовой тип в другой, необходимо создать новое число желаемого типа из существующего значения. Ниже, в примере, константа twoThousand имеет тип UInt16, тогда как константа one - UInt8. Сложить их напрямую не получится, потому что они разного типа. Вместо этого, в примере вызывается функция UInt16(one) для создания нового числа UInt16 из значения константы one:

```swift
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
```

Теперь, из-за того, что обе части сложения имеют тип UInt16 - операция сложения допустима. Для конечной константы (twoThousandAndOne) выведен тип UInt16, потому что это сложение двух UInt16 значений.

НазваниеТипа(начальноеЗначение) - стандартный способ вызвать инициализатор типов Swift и передать начальное значение. Честно говоря, у UInt16 есть инициализатор, который принимает UInt8 значение, и, таким образом, этот инициализатор используется, чтобы создать новый UInt16 из существующего UInt8. Здесь вы не можете передать любой тип, однако это должен быть тип, для которого у UInt16 есть инициализатор.

## Преобразования целых чисел и чисел с плавающей точкой
Преобразование между целыми числами и числами с плавающей точкой должно происходить явно:

```swift
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi равно 3.14159, и для него выведен тип Double
```

Здесь, значение константы three используется для создания нового значения типа Double, так что обе части сложения имеют один тип. Без этого преобразования сложение не будет проходить. Обратное преобразование числа с плавающей точкой в целое число тоже должно происходить явно. Так что тип целого числа может быть инициализирован с помощью Double и Float значений:

```swift
let integerPi = Int(pi)
// integerPi равен 3, и для него выведен тип Int
```

Числа с плавающей точкой всегда урезаются когда вы используете инициализацию целого числа через этот способ. Это означает, что 4.75 будет 4, а -3.9 будет -3.

```swift
Правила объединения числовых констант и переменных отличается от правил числовых литералов. Литеральное значение 3 может напрямую сложиться с литеральным значением 0.14159, потому что числовые литералы сами по себе не имеют явного типа. Их значение выводится только когда исполняется компилятором.
```
