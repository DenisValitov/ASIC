# Bandpass FIR filter

### В данном репозитории представлены файлы для разработки цифровой интегральной схемы полосового фильтра с конечной импульсной характеристикой для фиксированной точности.  
___
Цифровой фильтр обладает следующими характеристиками:
|Параметр|	Значение|
|:------------- |:------------------|
|Разрядность входных и выходных семплов|	10 бит|
|Полоса пропускания на f_s/4           |	0.1|
|Переходная полоса                     |	0.2|
|Ослабление                            |	75 дБ|
|Неравномерность                       |	0.08 дБ|
___
Для синтеза модели создайте папку *RTL/*, из терминала запустите скрипты:  
`RTL complier` 
 *	`../Scripts/MyModule_synth.tcl`
 *	`../Scripts/MyModule_synth_min.tcl`
 *	`../Scripts/MyModule_synth_max.tcl`

> Timing и area отчеты можно посмотреть в *Reports/Synthesis/*, а результаты топологии в *Outputs/Synthesis/*. 
________   
    
Для создания топологии модели создайте папку *Encounter/*, из терминала запустите скрипт:   
 `Encounter ../Scripts/FIRBandPassFilter_PaR_2.tcl`
> Timing и verification отчеты можно посмотреть в *Reports/Encounter/*, а результаты синтеза в *Outputs/Encounter/*.
_______
Для моделирования после синтеза модели и создания топологии создайте папку *Incisive/*, через терминал запустите команду:  
 `Incisive/`
>Не забывайте проверить файлы, необходимые для моделирования: 
> *	Source/filter_tb.v
> *	Source/filter_tb_encounter.v
> *	Source/input_rsvd.dat
> *	Source/output_rsvd_expected.dat
_______
Для *DRC* и *LVS* проверок модели:
> * создайте папку *Virtuoso/*, 
> * через терминал запустите команду *Virtuoso/*, 
> * создайте библиотеку *TEST*, 
> * импортируйте файлы *Outputs/Encounter/filter_netlist_physical.v* и *Outputs/Encounter/filter.def*. 
