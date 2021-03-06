﻿функция получитьОбъектРегЕксп(Шаблон, многоСтрочн, глобальн, игнорироватьРегистр)
	объектРегЕксп = Новый COMОбъект("VBScript.RegExp");
	ОбъектРегЕксп.MultiLine = МногоСтрочн;
	ОбъектРегЕксп.Global = Глобальн;
	ОбъектРегЕксп.IgnoreCase = ИгнорироватьРегистр;
	ОбъектРегЕксп.Pattern = Шаблон;
	Возврат объектРегЕксп;
КонецФункции

Функция разобратьТекстРегЕксп(данныеТекст, Шаблон, многоСтрочн, глобальн, игнорироватьРегистр) Экспорт
	ОбъектРегЕксп = получитьОбъектРегЕксп(Шаблон, многоСтрочн, глобальн, игнорироватьРегистр);
	Результат = Новый Массив;
	результатПоиска = ОбъектРегЕксп.Execute(данныеТекст);
	Для сч = 0 по результатПоиска.count-1 Цикл
		Для сч1=0 по результатПоиска.item(сч).SubMatches.Count-1 Цикл
			Результат.Добавить(результатПоиска.item(сч).SubMatches.item(сч1));
		КонецЦикла;
	КонецЦикла;	
	объектРегЕксп = Неопределено;
	Возврат Результат;
КонецФункции

Функция заменитьТекстРегЕксп(данныеТекст, Шаблон, наЧтоЗаменять, многоСтрочн, глобальн, игнорироватьРегистр) Экспорт
	ОбъектРегЕксп = получитьОбъектРегЕксп(Шаблон, многоСтрочн, глобальн, игнорироватьРегистр);	
	Результат = Новый Массив;
	Результат = ОбъектРегЕксп.Replace(данныеТекст, наЧтозаменять);
	объектРегЕксп = Неопределено;
	Возврат Результат;
КонецФункции

функция проверитьТекстРегЕксп(данныеТекст, Шаблон, многоСтрочн, глобальн, игнорироватьРегистр) Экспорт
	ОбъектРегЕксп = получитьОбъектРегЕксп(Шаблон, многоСтрочн, глобальн, игнорироватьРегистр);
	Результат = объектРегЕксп.Test(данныеТекст);
	объектРегЕксп = Неопределено;
	Возврат Результат;
КонецФункции
