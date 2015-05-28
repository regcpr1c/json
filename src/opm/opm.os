﻿/////////////////////////////////////////////////////////////////////////
//
// OneScript Package Manager
// Установщик пакетов для OneScript
// Выполняется, как os-приложение в командной строке:
//
// opm install my-package.ospx
//
/////////////////////////////////////////////////////////////////////////

#Использовать cmdline

Процедура ВыполнитьКоманду(Знач Аргументы)
	
	ОбработкаКоманд = СоздатьОбработчикКоманд();
	Парсер = Новый ПарсерАргументовКоманднойСтроки();
	
	ОбработкаКоманд.ДобавитьОписанияКоманд(Парсер);
	
	ПараметрыКоманды = Парсер.РазобратьКоманду(Аргументы);
	Если ПараметрыКоманды = Неопределено Тогда
		Сообщить("Некорректные аргументы командной строки");
		ЗавершитьРаботу(1);
	КонецЕсли;
	
	Попытка
	
		Если ПараметрыКоманды.Команда = "build" Тогда
			ОбработкаКоманд.ВыполнитьСборку(ПараметрыКоманды.ПозиционныеПараметры["КаталогИсходников"], ПараметрыКоманды.ПозиционныеПараметры["ФайлМанифеста"]);
		ИначеЕсли ПараметрыКоманды.Команда = "prepare" Тогда
			ОбработкаКоманд.ПодготовитьКаталогПроекта(ПараметрыКоманды.ПозиционныеПараметры["ИмяПакета"], ПараметрыКоманды.ИменованныеПараметры["dir"]);
		ИначеЕсли ПараметрыКоманды.Команда = "install" Тогда
			ОбработкаКоманд.УстановитьПакет(ПараметрыКоманды.ПозиционныеПараметры["ИмяПакета"]);
		КонецЕсли;
		
	Исключение
		Сообщить(ОписаниеОшибки());
		ЗавершитьРаботу(1);
	КонецПопытки;
	
КонецПроцедуры

/////////////////////////////////////////////////////////////////////////
// Вспомогательные функции

Функция КаталогСкрипта()
	
	Возврат (Новый Файл(ТекущийСценарий().Источник)).Путь;
	
КонецФункции

Функция СоздатьОбработчикКоманд()
	Возврат ЗагрузитьСценарий(ОбъединитьПути(КаталогСкрипта(), "commands.os"));
КонецФункции

/////////////////////////////////////////////////////////////////////////
// Точка входа

ВыполнитьКоманду(АргументыКоманднойСтроки);