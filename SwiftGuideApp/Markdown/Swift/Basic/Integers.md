# Целые числа
Integer (целое число) - это число, не содержащее дробной части, например как 42 и -23. Целые числа могут быть либо знаковыми (положительными, ноль или отрицательными) либо беззнаковыми (положительными или ноль).

Swift предусматривает знаковые и беззнаковые целые числа в 8, 16, 32 и 64 битном форматах. Эти целые числа придерживаются соглашения об именах, аналогичных именам в C, в том, что 8-разрядное беззнаковое целое число имеет тип Uint8, а 32-разрядное целое число имеет тип Int32. Как и все типы в Swift, эти типы целых чисел пишутся с заглавной буквой.

## Границы целых чисел
Вы можете получить доступ к минимальному и максимальному значению каждого типа целого числа с помощью его свойств min и max:

```swift
let minValue = UInt8.min // minValue равен 0, а его тип UInt8
let maxValue = UInt8.max // maxValue равен 255, а его тип UInt8
```

Тип значения этих свойств соответствует размеру числа (в примере выше этот тип UInt8) и поэтому может быть использован в выражениях наряду с другими значениями того же типа.

## Int
В большинстве случаев вам не нужно будет указывать конкретный размер целого числа для использования в коде. В Swift есть дополнительный тип целого числа - Int, который имеет тот же размер что и разрядность системы:

+ На 32-битной платформе, Int того же размера что и Int32
+ На 64-битной платформе, Int того же размера что и Int64

Если вам не нужно работать с конкретным размером целого числа, всегда используйте в своем коде Int для целых чисел. Это придает коду логичности и совместимости. Даже на 32-битных платформах, Int может хранить любое значение в пределах -2 147 483 648 и 2 147 483 647, а этого достаточно для многих диапазонов целых чисел.

## UInt
Swift также предусматривает беззнаковый тип целого числа - UInt, который имеет тот же размер что и разрядность системы:

+ На 32-битной платформе, UInt того же размера что и UInt32
+ На 64-битной платформе, UInt того же размера что и UInt64

        Используйте UInt, только когда вам действительно нужен тип беззнакового целого с размером таким же, как разрядность системы. Если это не так, использовать Int предпочтительнее, даже когда известно, что значения будут неотрицательными. Постоянное использование Int для целых чисел способствует совместимости кода, позволяет избежать преобразования между разными типами чисел, и соответствует выводу типа целого числа
