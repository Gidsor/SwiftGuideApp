# Числовые литералы
Числовые литералы могут быть написаны как:

+ Десятичное число, без префикса
+ Двоичное число, с префиксом 0b
+ Восьмеричное число, с префиксом 0o
+ Шестнадцатеричное число, с префиксом 0x

Все эти литералы целого числа имеют десятичное значение 17:

```swift
let decimalInteger = 17
let binaryInteger = 0b10001 // 17 в двоичной нотации
let octalInteger = 0o21 // 17 в восмеричной нотации
let hexadecimalInteger = 0x11 // 17 в шестнадцатеричной нотации
```

Литералы с плавающей точкой могут быть десятичными (без префикса) или шестнадцатеричными (с префиксом 0x). Они всегда должны иметь число (десятичное или шестнадцатеричное) по обе стороны от дробной точки. Они также могут иметь экспоненту, с указанием в верхнем или нижнем регистре е для десятичных чисел с плавающей точкой, или в верхнем или нижнем регистре р для шестнадцатеричных чисел с плавающей точкой.

Для десятичных чисел с показателем степени ехр, базовое число умножается на 10exp:

+ 1.25e2 означает 1.25 × 102, или 125.0.
+ 1.25e-2 означает 1.25 × 10-2, или 0.0125.

Для шестнадцатеричных чисел с показателем степени ехр, базовое число умножается на 2exp:

+ 0xFp2 означает 15 × 22, или 60.0.
+ 0xFp-2 означает 15 × 2-2, или 3.75.

Все эти числа с плавающей точкой имеют десятичное значение 12.1875:

```swift
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
```

Числовые литералы могут содержать дополнительное форматирование, чтобы их было удобнее читать. Целые числа и числа с плавающей точкой могут быть дополнены нулями и могут содержать символы подчеркивания для увеличения читабельности. Ни один тип форматирования не влияет на базовое значение литерала:

```swift
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
```
