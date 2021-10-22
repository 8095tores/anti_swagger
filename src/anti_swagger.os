#Использовать logos
#Использовать cli
#Использовать "."

Перем Лог;

///////////////////////////////////////////////////////////////////////////////

Процедура ВыполнитьПриложение()

    Приложение = Новый КонсольноеПриложение("anti_swagger", "Конвертор спецификациq OAS в расширение 1С");
    Приложение.Версия("v version", ПараметрыПриложения.Версия());

    Приложение.ДобавитьКоманду("c convert", "Конвертация из спецификации описания в расширение 1С", Новый КомандаКонвертироватьСпецификацию);
	//Приложение.ДобавитьКоманду("s source", "Конвертация из исходных файлов расширения (.cfe) в файл конфигурации (.cf)", Новый КомандаИзКаталогаИсходныхФайлов);
	
    Приложение.Запустить(АргументыКоманднойСтроки);

КонецПроцедуры // ВыполнениеКоманды()


///////////////////////////////////////////////////////

Лог = Логирование.ПолучитьЛог(ПараметрыПриложения.ИмяЛога());
ВыполнитьПриложение();