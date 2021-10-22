
Функция ЗаполнитьШаблонПараметрами(ТекстШаблона, СтруктураПараметров) Экспорт
	
	Если НЕ ТипЗнч(СтруктураПараметров) = Тип("Структура") Тогда 
		Возврат ТекстШаблона;
	КонецЕсли;
	
	РезультатЗаполнения = ТекстШаблона;
	
	Для каждого Эл Из СтруктураПараметров Цикл
		
		Ключ_Замены = "%" + Эл.Ключ + "%";
		
		РезультатЗаполнения = СтрЗаменить(РезультатЗаполнения, Ключ_Замены, Эл.Значение);
		
	КонецЦикла;
	
	Возврат РезультатЗаполнения;
	
КонецФункции

Функция ПолучитьШаблонПоИмени(Имя_Шаблона) Экспорт
		
	Если Имя_Шаблона = "Конфигурация_Язык" Тогда
		Возврат Конфигурация_Язык();
	ИначеЕсли Имя_Шаблона = "Конфигурация_Роль" Тогда
		Возврат Конфигурация_Роль();
	ИначеЕсли Имя_Шаблона = "Конфигурация_Поставка" Тогда
		Возврат Конфигурация_Поставка();
	ИначеЕсли Имя_Шаблона = "Конфигурация_ОбщийМодуль" Тогда
		Возврат Конфигурация_ОбщийМодуль();
	ИначеЕсли Имя_Шаблона = "Конфигурация_Сервис_Сервис" Тогда
		Возврат Конфигурация_Сервис_Сервис();
	ИначеЕсли Имя_Шаблона = "Конфигурация_Сервис_Шаблон" Тогда
		Возврат Конфигурация_Сервис_Шаблон();
	ИначеЕсли Имя_Шаблона = "Конфигурация_Сервис_Метод" Тогда
		Возврат Конфигурация_Сервис_Метод();
	ИначеЕсли Имя_Шаблона = "Поставка_Поставка" Тогда
		Возврат Поставка_Поставка();
	ИначеЕсли Имя_Шаблона = "Поставка_Сервис_Сервис" Тогда
		Возврат Поставка_Сервис_Сервис();
	ИначеЕсли Имя_Шаблона = "Поставка_Сервис_Шаблон" Тогда
		Возврат Поставка_Сервис_Шаблон();
	ИначеЕсли Имя_Шаблона = "Модуль_Сервиса_Функция" Тогда
		Возврат Модуль_Сервиса_Функция();		
	ИначеЕсли Имя_Шаблона = "Модуль_Общий_КОНТРОЛЛЕР" Тогда
		Возврат Модуль_Общий_КОНТРОЛЛЕР();		
	ИначеЕсли Имя_Шаблона = "Модуль_Общий_МОДЕЛЬ" Тогда
		Возврат Модуль_Общий_МОДЕЛЬ();		
	ИначеЕсли Имя_Шаблона = "Модуль_Общий_ПРЕДСТАВЛЕНИЕ" Тогда
		Возврат Модуль_Общий_ПРЕДСТАВЛЕНИЕ();
	Иначе
		Возврат "";
	КонецЕсли;	
	
КонецФункции

Функция Конфигурация_Язык()
	Возврат "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<MetaDataObject xmlns=""http://v8.1c.ru/8.3/MDClasses"" 
	|				xmlns:app=""http://v8.1c.ru/8.2/managed-application/core"" 
	|				xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config"" 
	|				xmlns:cmi=""http://v8.1c.ru/8.2/managed-application/cmi"" 
	|				xmlns:ent=""http://v8.1c.ru/8.1/data/enterprise"" 
	|				xmlns:lf=""http://v8.1c.ru/8.2/managed-application/logform"" 
	|				xmlns:style=""http://v8.1c.ru/8.1/data/ui/style"" 
	|				xmlns:sys=""http://v8.1c.ru/8.1/data/ui/fonts/system"" 
	|				xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
	|				xmlns:v8ui=""http://v8.1c.ru/8.1/data/ui"" 
	|				xmlns:web=""http://v8.1c.ru/8.1/data/ui/colors/web"" 
	|				xmlns:win=""http://v8.1c.ru/8.1/data/ui/colors/windows"" 
	|				xmlns:xen=""http://v8.1c.ru/8.3/xcf/enums"" 
	|				xmlns:xpr=""http://v8.1c.ru/8.3/xcf/predef"" 
	|				xmlns:xr=""http://v8.1c.ru/8.3/xcf/readable"" 
	|				xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
	|				xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
	|				version=""2.10"">
	|	<Language uuid=""%ЯЗЫК_УИД%"">
	|		<InternalInfo/>
	|		<Properties>
	|			<Name>Русский</Name>
	|			<Comment/>
	|			<ObjectBelonging>Adopted</ObjectBelonging>
	|			<LanguageCode>ru</LanguageCode>
	|		</Properties>
	|	</Language>
	|</MetaDataObject>";

КонецФункции

Функция Конфигурация_Роль()
	Возврат "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<MetaDataObject xmlns=""http://v8.1c.ru/8.3/MDClasses"" 
	|				xmlns:app=""http://v8.1c.ru/8.2/managed-application/core"" 
	|				xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config"" 
	|				xmlns:cmi=""http://v8.1c.ru/8.2/managed-application/cmi"" 
	|				xmlns:ent=""http://v8.1c.ru/8.1/data/enterprise"" 
	|				xmlns:lf=""http://v8.1c.ru/8.2/managed-application/logform"" 
	|				xmlns:style=""http://v8.1c.ru/8.1/data/ui/style"" 
	|				xmlns:sys=""http://v8.1c.ru/8.1/data/ui/fonts/system"" 
	|				xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
	|				xmlns:v8ui=""http://v8.1c.ru/8.1/data/ui"" 
	|				xmlns:web=""http://v8.1c.ru/8.1/data/ui/colors/web"" 
	|				xmlns:win=""http://v8.1c.ru/8.1/data/ui/colors/windows"" 
	|				xmlns:xen=""http://v8.1c.ru/8.3/xcf/enums"" 
	|				xmlns:xpr=""http://v8.1c.ru/8.3/xcf/predef"" 
	|				xmlns:xr=""http://v8.1c.ru/8.3/xcf/readable"" 
	|				xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
	|				xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
	|				version=""2.10"">
	|	<Role uuid=""%РОЛЬ_УИД%"">
	|		<Properties>
	|			<Name>%РОЛЬ_ИМЯ%</Name>
	|			<Synonym/>
	|			<Comment/>
	|		</Properties>
	|	</Role>
	|</MetaDataObject>";
КонецФункции

Функция Конфигурация_Поставка()
	Возврат "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<MetaDataObject xmlns=""http://v8.1c.ru/8.3/MDClasses"" 
	|				xmlns:app=""http://v8.1c.ru/8.2/managed-application/core"" 
	|				xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config"" 
	|				xmlns:cmi=""http://v8.1c.ru/8.2/managed-application/cmi"" 
	|				xmlns:ent=""http://v8.1c.ru/8.1/data/enterprise"" 
	|				xmlns:lf=""http://v8.1c.ru/8.2/managed-application/logform""
	|				xmlns:style=""http://v8.1c.ru/8.1/data/ui/style"" 
	|				xmlns:sys=""http://v8.1c.ru/8.1/data/ui/fonts/system"" 
	|				xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
	|				xmlns:v8ui=""http://v8.1c.ru/8.1/data/ui"" 
	|				xmlns:web=""http://v8.1c.ru/8.1/data/ui/colors/web"" 
	|				xmlns:win=""http://v8.1c.ru/8.1/data/ui/colors/windows"" 
	|				xmlns:xen=""http://v8.1c.ru/8.3/xcf/enums"" 
	|				xmlns:xpr=""http://v8.1c.ru/8.3/xcf/predef"" 
	|				xmlns:xr=""http://v8.1c.ru/8.3/xcf/readable"" 
	|				xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
	|				xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
	|				version=""2.10"">
	|	<Configuration uuid=""%РАСШИРЕНИЕ_УИД%"">
	|		<InternalInfo>
	|			<xr:ContainedObject>
	|				<xr:ClassId>9cd510cd-abfc-11d4-9434-004095e12fc7</xr:ClassId>
	|				<xr:ObjectId>62a9ccf3-e144-476c-acac-8cb3306b2201</xr:ObjectId>
	|			</xr:ContainedObject>
	|			<xr:ContainedObject>
	|				<xr:ClassId>9fcd25a0-4822-11d4-9414-008048da11f9</xr:ClassId>
	|				<xr:ObjectId>1066b6ed-02fd-4ca1-acff-37d7152d845f</xr:ObjectId>
	|			</xr:ContainedObject>
	|			<xr:ContainedObject>
	|				<xr:ClassId>e3687481-0a87-462c-a166-9f34594f9bba</xr:ClassId>
	|				<xr:ObjectId>9b059cf4-fe98-4d02-a5f7-5473edc1c137</xr:ObjectId>
	|			</xr:ContainedObject>
	|			<xr:ContainedObject>
	|				<xr:ClassId>9de14907-ec23-4a07-96f0-85521cb6b53b</xr:ClassId>
	|				<xr:ObjectId>35920e76-9ab7-42ef-8057-72babb7db822</xr:ObjectId>
	|			</xr:ContainedObject>
	|			<xr:ContainedObject>
	|				<xr:ClassId>51f2d5d8-ea4d-4064-8892-82951750031e</xr:ClassId>
	|				<xr:ObjectId>74b7232c-ad5d-4461-84de-622b113be20e</xr:ObjectId>
	|			</xr:ContainedObject>
	|			<xr:ContainedObject>
	|				<xr:ClassId>e68182ea-4237-4383-967f-90c1e3370bc7</xr:ClassId>
	|				<xr:ObjectId>8d0ad0dc-aa74-490d-80da-8a9232506d4e</xr:ObjectId>
	|			</xr:ContainedObject>
	|			<xr:ContainedObject>
	|				<xr:ClassId>fb282519-d103-4dd3-bc12-cb271d631dfc</xr:ClassId>
	|				<xr:ObjectId>8a585189-20d2-4a73-a13d-11d10a32015b</xr:ObjectId>
	|			</xr:ContainedObject>
	|		</InternalInfo>
	|		<Properties>
	|			<Name>%РАСШИРЕНИЕ_ИМЯ%</Name>
	|			<Synonym>
	|				<v8:item>
	|					<v8:lang>ru</v8:lang>
	|					<v8:content>%РАСШИРЕНИЕ_СИНОНИМ%</v8:content>
	|				</v8:item>
	|			</Synonym>
	|			<Comment/>
	|			<ConfigurationExtensionPurpose>Customization</ConfigurationExtensionPurpose>
	|			<ObjectBelonging>Adopted</ObjectBelonging>
	|			<KeepMappingToExtendedConfigurationObjectsByIDs>true</KeepMappingToExtendedConfigurationObjectsByIDs>
	|			<NamePrefix>%РАСШИРЕНИЕ_ПРЕФИКС%</NamePrefix>
	|			<ConfigurationExtensionCompatibilityMode>Version8_3_17</ConfigurationExtensionCompatibilityMode>
	|			<DefaultRunMode>ManagedApplication</DefaultRunMode>
	|			<UsePurposes>
	|				<v8:Value xsi:type=""app:ApplicationUsePurpose"">PlatformApplication</v8:Value>
	|			</UsePurposes>
	|			<ScriptVariant>Russian</ScriptVariant>
	|			<DefaultRoles>
	|				<xr:Item xsi:type=""xr:MDObjectRef"">Role.%РОЛЬ_ИМЯ%</xr:Item>
	|			</DefaultRoles>
	|			<Vendor/>
	|			<Version/>
	|			<DefaultLanguage>Language.Русский</DefaultLanguage>
	|			<BriefInformation/>
	|			<DetailedInformation/>
	|			<Copyright/>
	|			<VendorInformationAddress/>
	|			<ConfigurationInformationAddress/>
	|			<InterfaceCompatibilityMode>Taxi</InterfaceCompatibilityMode>
	|		</Properties>
	|		<ChildObjects>
	|			<Language>Русский</Language>
	|			<Role>%РОЛЬ_ИМЯ%</Role>
	|			<HTTPService>%СЕРВИС_ИМЯ%</HTTPService>
	|			<CommonModule>%ОБЩИЙМОДУЛЬ_ИМЯ_КОНТРОЛЛЕР%</CommonModule>
	|			<CommonModule>%ОБЩИЙМОДУЛЬ_ИМЯ_МОДЕЛЬ%</CommonModule>
	|			<CommonModule>%ОБЩИЙМОДУЛЬ_ИМЯ_ПРЕДСТАВЛЕНИЕ%</CommonModule>
	|		</ChildObjects>
	|	</Configuration>
	|</MetaDataObject>";
КонецФункции

Функция Конфигурация_ОбщийМодуль()
	Возврат "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<MetaDataObject xmlns=""http://v8.1c.ru/8.3/MDClasses"" 
	|				xmlns:app=""http://v8.1c.ru/8.2/managed-application/core"" 
	|				xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config"" 
	|				xmlns:cmi=""http://v8.1c.ru/8.2/managed-application/cmi"" 
	|				xmlns:ent=""http://v8.1c.ru/8.1/data/enterprise"" 
	|				xmlns:lf=""http://v8.1c.ru/8.2/managed-application/logform"" 
	|				xmlns:style=""http://v8.1c.ru/8.1/data/ui/style"" 
	|				xmlns:sys=""http://v8.1c.ru/8.1/data/ui/fonts/system"" 
	|				xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
	|				xmlns:v8ui=""http://v8.1c.ru/8.1/data/ui"" 
	|				xmlns:web=""http://v8.1c.ru/8.1/data/ui/colors/web"" 
	|				xmlns:win=""http://v8.1c.ru/8.1/data/ui/colors/windows"" 
	|				xmlns:xen=""http://v8.1c.ru/8.3/xcf/enums"" 
	|				xmlns:xpr=""http://v8.1c.ru/8.3/xcf/predef"" 
	|				xmlns:xr=""http://v8.1c.ru/8.3/xcf/readable"" 
	|				xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
	|				xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
	|				version=""2.10"">
	|	<CommonModule uuid=""%ОБЩИЙМОДУЛЬ_УИД%"">
	|		<Properties>
	|			<Name>%ОБЩИЙМОДУЛЬ_ИМЯ%</Name>
	|			<Synonym>
	|				<v8:item>
	|					<v8:lang>ru</v8:lang>
	|					<v8:content>%ОБЩИЙМОДУЛЬ_СИНОНИМ%</v8:content>
	|				</v8:item>
	|			</Synonym>
	|			<Comment>%ОБЩИЙМОДУЛЬ_КОММЕНТАРИЙ%</Comment>
	|			<Global>false</Global>
	|			<ClientManagedApplication>false</ClientManagedApplication>
	|			<Server>true</Server>
	|			<ExternalConnection>false</ExternalConnection>
	|			<ClientOrdinaryApplication>false</ClientOrdinaryApplication>
	|			<ServerCall>false</ServerCall>
	|			<Privileged>false</Privileged>
	|			<ReturnValuesReuse>DontUse</ReturnValuesReuse>
	|		</Properties>
	|	</CommonModule>
	|</MetaDataObject>";
КонецФункции

Функция Конфигурация_Сервис_Сервис()
	Возврат "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<MetaDataObject xmlns=""http://v8.1c.ru/8.3/MDClasses"" 
	|				xmlns:app=""http://v8.1c.ru/8.2/managed-application/core"" 
	|				xmlns:cfg=""http://v8.1c.ru/8.1/data/enterprise/current-config"" 
	|				xmlns:cmi=""http://v8.1c.ru/8.2/managed-application/cmi"" 
	|				xmlns:ent=""http://v8.1c.ru/8.1/data/enterprise"" 
	|				xmlns:lf=""http://v8.1c.ru/8.2/managed-application/logform"" 
	|				xmlns:style=""http://v8.1c.ru/8.1/data/ui/style"" 
	|				xmlns:sys=""http://v8.1c.ru/8.1/data/ui/fonts/system"" 
	|				xmlns:v8=""http://v8.1c.ru/8.1/data/core"" 
	|				xmlns:v8ui=""http://v8.1c.ru/8.1/data/ui"" 
	|				xmlns:web=""http://v8.1c.ru/8.1/data/ui/colors/web"" 
	|				xmlns:win=""http://v8.1c.ru/8.1/data/ui/colors/windows"" 
	|				xmlns:xen=""http://v8.1c.ru/8.3/xcf/enums"" 
	|				xmlns:xpr=""http://v8.1c.ru/8.3/xcf/predef"" 
	|				xmlns:xr=""http://v8.1c.ru/8.3/xcf/readable"" 
	|				xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
	|				xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
	|				version=""2.10"">
	|	<HTTPService uuid=""%СЕРВИС_УИД%"">
	|		<Properties>
	|			<Name>%СЕРВИС_ИМЯ%</Name>
	|			<Synonym>
	|				<v8:item>
	|					<v8:lang>ru</v8:lang>
	|					<v8:content>%СЕРВИС_СИНОНИМ%</v8:content>
	|				</v8:item>
	|			</Synonym>
	|			<Comment>%СЕРВИС_КОММЕНТАРИЙ%</Comment>
	|			<RootURL>%СЕРВИС_ПУБЛИКАЦИЯ%</RootURL>
	|			<ReuseSessions>AutoUse</ReuseSessions>
	|			<SessionMaxAge>20</SessionMaxAge>
	|		</Properties>
	|		<ChildObjects>
	|			%СЕРВИС_ШАБЛОНЫ%
	|		</ChildObjects>
	|	</HTTPService>
	|</MetaDataObject>";
КонецФункции

Функция Конфигурация_Сервис_Шаблон()
	Возврат "<URLTemplate uuid=""%ШАБЛОН_УИД%"">
	|<Properties>
	|	<Name>%ШАБЛОН_ИМЯ%</Name>
	|	<Synonym>
	|		<v8:item>
	|			<v8:lang>ru</v8:lang>
	|			<v8:content>%ШАБЛОН_СИНОНИМ%</v8:content>
	|		</v8:item>
	|	</Synonym>
	|	<Comment>%ШАБЛОН_КОММЕНТАРИЙ%</Comment>
	|	<Template>%ШАБЛОН_ПУБЛИКАЦИЯ%</Template>
	|</Properties>
	|<ChildObjects>
	|	%ШАБЛОН_МЕТОДЫ%
	|</ChildObjects>
	|</URLTemplate>
	|";
КонецФункции

Функция Конфигурация_Сервис_Метод()
	Возврат "<Method uuid=""%МЕТОД_УИД%"">
	|<Properties>
	|	<Name>%МЕТОД_ИМЯ%</Name>
	|	<Synonym>
	|		<v8:item>
	|			<v8:lang>ru</v8:lang>
	|			<v8:content>%МЕТОД_СИНОНИМ%</v8:content>
	|		</v8:item>
	|	</Synonym>
	|	<Comment>%МЕТОД_КОММЕНТАРИЙ%</Comment>
	|	<HTTPMethod>%МЕТОД_МЕТОД%</HTTPMethod>
	|	<Handler>%МЕТОД_ИМЯ_ФУНКЦИИ%</Handler>
	|</Properties>
	|</Method>
	|";
КонецФункции

Функция Поставка_Поставка()
	Возврат "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<ConfigDumpInfo xmlns=""http://v8.1c.ru/8.3/xcf/dumpinfo"" 
	|				xmlns:xen=""http://v8.1c.ru/8.3/xcf/enums"" 
	|				xmlns:xs=""http://www.w3.org/2001/XMLSchema"" 
	|				xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" 
	|				format=""Hierarchical"" 
	|				version=""2.10"">
	|	<ConfigVersions>
	|		<Metadata name=""Configuration.%РАСШИРЕНИЕ_ИМЯ%"" id=""%РАСШИРЕНИЕ_УИД%""/>
	|		<Metadata name=""Language.Русский"" id=""%ЯЗЫК_УИД%""/>
	|		<Metadata name=""Role.%РОЛЬ_ИМЯ%"" id=""%РОЛЬ_УИД%""/>
	|		%ОПИСАНИЕ_СЕРВИСА%<Metadata name=""HTTPService.%СЕРВИС_ИМЯ%.Module"" id=""%СЕРВИС_УИД%.0""/>
	|		<Metadata name=""CommonModule.%ОБЩИЙМОДУЛЬ_ИМЯ_КОНТРОЛЛЕР%"" id=""%ОБЩИЙМОДУЛЬ_УИД_КОНТРОЛЛЕР%.0""/>
	|		<Metadata name=""CommonModule.%ОБЩИЙМОДУЛЬ_ИМЯ_КОНТРОЛЛЕР%.Module"" id=""%ОБЩИЙМОДУЛЬ_УИД_КОНТРОЛЛЕР%.0""/>
	|		<Metadata name=""CommonModule.%ОБЩИЙМОДУЛЬ_ИМЯ_МОДЕЛЬ%"" id=""%ОБЩИЙМОДУЛЬ_УИД_МОДЕЛЬ%.0""/>
	|		<Metadata name=""CommonModule.%ОБЩИЙМОДУЛЬ_ИМЯ_МОДЕЛЬ%.Module"" id=""%ОБЩИЙМОДУЛЬ_УИД_МОДЕЛЬ%.0""/>
	|		<Metadata name=""CommonModule.%ОБЩИЙМОДУЛЬ_ИМЯ_ПРЕДСТАВЛЕНИЕ%"" id=""%ОБЩИЙМОДУЛЬ_УИД_ПРЕДСТАВЛЕНИЕ%.0""/>
	|		<Metadata name=""CommonModule.%ОБЩИЙМОДУЛЬ_ИМЯ_ПРЕДСТАВЛЕНИЕ%.Module"" id=""%ОБЩИЙМОДУЛЬ_УИД_ПРЕДСТАВЛЕНИЕ%.0""/>
	|	</ConfigVersions>
	|</ConfigDumpInfo>";
КонецФункции

Функция Поставка_Сервис_Сервис()
	Возврат "<Metadata name=""HTTPService.%СЕРВИС_ИМЯ%"" id=""%СЕРВИС_УИД%"" configVersion="""">
	|%ДОБАВЛЕННЫЕ_ШАБЛОНЫ%
	|</Metadata>";
КонецФункции

Функция Поставка_Сервис_Шаблон()
	Возврат "<Metadata name=""%ШАБЛОН_МЕТОД_ИМЯ%"" id=""%ШАБЛОН_МЕТОД_УИД%""/>
	|		";
КонецФункции

Функция Модуль_Сервиса_Функция()
	Возврат "%ФУНКЦИЯ_ОПИСАНИЕ%
	|Функция %ФУНКЦИЯ_ИМЯ%(%ФУНКЦИЯ_ВХОДЯЩИЕПАРАМЕТРЫ%) %ФУНКЦИЯ_ЭКСПОРТ%
	|	
	|	%ФУНКЦИЯ_ТЕЛО%
	|	
	|КонецФункции
	|";
КонецФункции

Функция Модуль_Общий_КОНТРОЛЛЕР()
	Возврат "
	|Функция Получить_Параметры_Запроса(Запрос)
	|	
	|	Возврат Запрос.ПараметрыЗапроса;
	|	
	|КонецФункции
	|
	|Функция Получить_Параметры_УРЛ(Запрос)
	|	
	|	Возврат Запрос.ПараметрыURL;	
	|	
	|КонецФункции
	|
	|Функция Получить_Параметры_Заголовки(Запрос)
	|	
	|	Возврат Запрос.Заголовки;		
	|	
	|КонецФункции
	|
	|Функция Получить_Параметры_Тело(Запрос)
	|	
	|	Возврат Запрос.ПолучитьТелоКакСтроку();
	|	
	|КонецФункции 
	|";
КонецФункции

Функция Модуль_Общий_МОДЕЛЬ()
	Возврат "";
КонецФункции

Функция Модуль_Общий_ПРЕДСТАВЛЕНИЕ()
	Возврат "
	|Функция ВыполнитьПреобразованиеОтвета(Знач СтруктураОтвета, КодСостояния)
	|		
	|	JSON = Новый ЗаписьJSON;
	|	JSON.ПроверятьСтруктуру = Истина;
	|	
	|	ПараметрыПисателя = Новый ПараметрыЗаписиJSON(, Символы.Таб,, ЭкранированиеСимволовJSON.СимволыВнеBMP);
	|	JSON.УстановитьСтроку(ПараметрыПисателя);
	|	
	|	НастройкаСериализации = Новый НастройкиСериализацииJSON;
	|	НастройкаСериализации.ВариантЗаписиДаты = ВариантЗаписиДатыJSON.ЛокальнаяДата;
	|	НастройкаСериализации.ФорматСериализацииДаты = ФорматДатыJSON.ISO;
	|	
	|	Попытка		
	|		ЗаписатьJSON(JSON, СтруктураОтвета, НастройкаСериализации);
	|		
	|		Результат = JSON.Закрыть();
	|	Исключение
	|		
	|		Информация = ИнформацияОбОшибке();
	|		
	|		Результат = ""{'error':'"" + КодироватьСтроку(ПодробноеПредставлениеОшибки(Информация), СпособКодированияСтроки.КодировкаURL) + ""'}"";		
	|		
	|		КодСостояния = 500;
	|		
	|	КонецПопытки;
	|	
	|	Возврат Результат;
	|	 
	|КонецФункции
	|
	|
	|Функция ПодготовитьОтвет(СтруктураОтвета, КодСостояния = 200, ПричинаСостояния = """") Экспорт
	|	
	|	ОтветСтрокой = ВыполнитьПреобразованиеОтвета(СтруктураОтвета, КодСостояния);
	|	
	|	Ответ = Новый HTTPСервисОтвет(КодСостояния, ПричинаСостояния);
	|	
	|	Ответ.УстановитьТелоИзСтроки(ОтветСтрокой);	
	|	
	|	ОтветСтрокой = Неопределено;
	|	
	|	Возврат Ответ;
	|	
	|КонецФункции
	|
	|";
КонецФункции




































