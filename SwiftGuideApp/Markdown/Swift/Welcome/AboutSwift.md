# О языке Swift
Swift - новый язык программирования для разработки приложений под iOS, macOS, watchOS и tvOS. Несмотря на это, многие части Swift могут быть вам знакомы из вашего опыта разработки на C и Objective-C.

Swift предоставляет свои собственные версии фундаментальных типов C и Objective-C, включая Int для целых чисел, Double и Float для значений с плавающей точкой, Bool для булевых значений, String для текста. Swift также предоставляет мощные версии трех основных типов коллекций, Array, Set и Dictionary, как описано в разделе Типы коллекций.

Подобно C, Swift использует переменные для хранения и обращения к значениям по уникальному имени. Swift также широко использует переменные, значения которых не могут быть изменены. Они известны как константы, и являются гораздо более мощными, чем константы в C. Константы используются в Swift повсеместно, чтобы сделать код безопаснее и чище в случаях, когда вы работаете со значениями, которые не должны меняться.

В дополнение к знакомым типам, Swift включает расширенные типы, которых нет в Objective-C. К ним относятся кортежи, которые позволяют создавать и передавать группы значений. Кортежи могут возвращать несколько значений из функции как одно целое значение.

Swift также включает опциональные типы, которые позволяют работать с отсутствующими значениями. Опциональные значения говорят либо «здесь есть значение, и оно равно х», либо «здесь нет значения вообще». Опциональные типы подобны использованию nil с указателями в Objective-C, но они работают со всеми типами, не только с классами. Опциональные значения безопаснее и выразительнее чем nil указатели в Objective-C, и находятся в сердце многих наиболее мощных особенностей Swift.

Swift - язык типобезопасный, что означает, что Swift помогает вам понять, с какими типами значений ваш код может работать. Если кусок вашего кода ожидает String, безопасность типов не даст вам передать ему Int по ошибке. Кроме того, безопасность типов не позволит вам случайно передать опциональный String куску кода, который ожидает неопциональный String. Безопасность типов позволяет вам улавливать и исправлять ошибки как можно раньше в процессе разработки.

На данный момент выпущено 4 версии Swift.

- 2 июня 2014 - Swift 1.0
- 8 июня 2015 - Swift 2.0
- 3 декабря 2015 - Swift 3.0
- 19 сентября 2017 - Swift 4.0

Swift уже имеет за плечами годы развития, и он продолжает развиваться, включая в себя все новые и новые возможности.

Apple разделила код Swift на несколько открытых репозиториев.

Компилятор и стандартная библиотека:

- Swift: основной Swift репозиторий, который содержит исходный код для компилятора Swift, стандартная библиотека и SourceKit;
- Swift-Evolution: документы, относящиеся к продолжающемуся развитию Swift, включая цели для предстоящих выпусков, предложения для изменений и расширений Swift;

Библиотеки ядра:

- Swift corelibs-foundation: исходный код для Foundation, который предоставляет общую функциональность для всех приложений;
- Swift corelibs-libdispatch: исходный код для libdispatch, который предоставляет примитивы параллелизма для работы на многоядерном аппаратном обеспечении;
- Swift corelibs-xctest: исходный код для XCTest, который обеспечивает фундаментальную инфраструктуру тестирования для Swift-приложений и библиотек;

Менеджер пакетов:

- Swift package-manager: исходный код для менеджера пакетов Swift;
- Swift llbuild: исходный код для llbuild, система низкого уровня, который использует Swift package-manager;

Клонированные репозитории:

- Swift опирается на несколько других проектов с открытым кодом, особенно на компилятор LLVM.
- Swift llvm: исходный код LLVM, с кусочками Swift-дополнений;
- Swift clang: исходный код для Clang, с кусочками Swift дополнений;
- Swift lldb: исходный код Swift-версии LLDB, для отладки Swift программ;
