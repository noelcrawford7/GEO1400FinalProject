/*Import Air*/

FILENAME CSV "/home/pnc100/Imported Data/GEOData/Air Pollution.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=AirData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=2436;
RUN;

FILENAME CSV;

data AirData2;
set AirData;
keep Country 'Year'n  Air;
run;

proc sort data=airdata2 out=airsort;
by Country 'Year'n;
run;

/*Import GDP*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/GDP.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=GDPData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=798;
RUN;

FILENAME CSV;

data gdpdata2;
set gdpdata;
keep Country 'TIME'n GDP;
Rename 'TIME'n = 'Year'n;
run;

proc sort data=gdpdata2 out= gdpsort;
by Country 'Year'n;
run;

/*Import Globalization*/

FILENAME CSV "/home/pnc100/Imported Data/GEOData/Globalization.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=FDIData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=652;
RUN;

FILENAME CSV;

data FDIdata2;
set fdidata;
keep Country 'Year'n FDI;
run;

proc sort data=fdidata2 out= fdisort;
by Country 'Year'n;
run;

/*Import Inbound Tourism*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Inbound.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=InTourData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=337;
RUN;

FILENAME CSV;

data InTourData2;
set InTourData;
keep Var2 'Year'n InTourism;
Rename Var2 = Country;
Rename InTourism = 'Inbound Tourism'n;
run;

proc sort data=Intourdata2 out= intoursort;
by Country 'Year'n;
run;

/*Import Outbound Tourism*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Outbound.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=OutTourData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=320;
RUN;

FILENAME CSV;

data OutTourData2;
set OutTourData;
keep Var2 'Year'n OutTourism;
Rename Var2 = Country;
Rename OutTourism = 'Outbound Tourism'n;
run;

proc sort data=outtourdata2 out= outtoursort;
by Country 'Year'n;
run;

/*Import Life Expectancy*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Life Expectancy.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=LifeData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=791;
RUN;

FILENAME CSV;

data LifeData2;
set LifeData;
keep Country 'Year'n LifeExpectancy;
Rename LifeExpectancy = 'Life Expectancy'n;
run;

proc sort data=lifedata2 out= lifesort;
by Country 'Year'n;
run;

/*Import Physicians*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Physicians.csv" TERMSTR=CRLF;

PROC IMPORT DATAFILE=CSV
		    OUT=PhysicianData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=627;
RUN;

FILENAME CSV;

data PhysicianData2;
set PhysicianData;
keep Country 'Year'n Physicians;
run;

proc sort data = physiciandata2 out= phsort;
by Country 'Year'n;
run;

/*Import Land*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Land.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=LandData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=1054;
RUN;

FILENAME CSV;

data LandData2;
set LandData;
keep Country 'Year'n Land;
run;

proc sort data = landdata2 out= landsort;
by Country 'Year'n;
run;

/*Import Growth*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Growth.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=GrowthData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=640;
RUN;

FILENAME CSV;

data GrowthData2;
set GrowthData;
keep Country 'TIME'n Growth;
Rename 'TIME'n = 'Year'n;
run;

proc sort data = Growthdata2 out= growthsort;
by Country 'Year'n;
run;

/*Import Urban*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Urban.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=UrbanData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=654;
RUN;

FILENAME CSV;

data UrbanData2;
set UrbanData;
keep Region 'Year'n Urban;
Rename Region = Country;
run;

proc sort data = urbandata2 out= urbansort;
by Country 'Year'n;
run;

/*Import Population*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Population.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=PopData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=879;
RUN;

FILENAME CSV;

data PopData2;
set PopData;
keep Region 'Year'n Population;
Rename Region = Country;
run;

proc sort data = popdata2 out= popsort;
by Country 'Year'n;
run;

/*Import Population Density*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Population Density.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=PopDenData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=640;
RUN;

FILENAME CSV;

data PopDenData2;
set PopDenData;
keep Region 'Year'n PopDen;
Rename Region = Country;
Rename PopDen = 'Population Density'n;
run;

proc sort data = popdendata2 out= popdensort;
by Country 'Year'n;
run;

/*Import Emigration*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Emigration.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=EmigrationData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=55991;
RUN;

FILENAME CSV;

proc sql;
	create table SqlEmigration as select * ,
	sum('Value'n) as Emigration
	from EmigrationData
	group by 'Country of birth/nationality'n, 'Year'n 
	order by 'Country of birth/nationality'n;
	quit;

data EmigrationData2;
set SqlEmigration;
keep 'Country of birth/nationality'n 'Year'n Emigration;
Rename 'Country of birth/nationality'n = Country;
run;

proc sort data=emigrationdata2 out=EmigrationSort nodup;
by Country Year;
run;

/*Import Immigration*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Immigration.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=ImmigrationData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=555;
RUN;

FILENAME CSV;

data ImmigrationData2;
set ImmigrationData;
keep Country 'Year'n 'Value'n;
Rename 'Value'n = Immigration;
run;

proc sort data = ImmigrationData2 out= ImmigrationSort;
by Country 'Year'n;
run;

/*Import Cell Phone*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Cell Phone.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=CellData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=973;
RUN;

FILENAME CSV;

data CellData2;
set CellData;
keep Country 'Year'n Cell;
if Country = " " then delete;
run;

proc sort data = CellData2 out= CellSort;
by Country 'Year'n;
run;

/*Import Data for Internet*/
FILENAME CSV "/home/pnc100/Imported Data/GEOData/Internet.csv" TERMSTR=CRLF;
PROC IMPORT DATAFILE=CSV
		    OUT=InternetData
		    DBMS=CSV
		    REPLACE;
		    guessingrows=999;
RUN;

FILENAME CSV;

data InternetData2;
set InternetData;
keep Country 'Year'n Internet;
if 'Year'n = " " then delete;
run;

proc sort data = InternetData2 out= InternetSort;
by Country 'Year'n;
run;


/**************Outbound Tourism Regression Begin****************************/

/*Merge datasets for OutTourism*/
data mergeouttourdata;
merge 
Phsort
outtoursort
popdensort
growthsort
landsort
lifesort
fdisort
airsort
popsort
gdpsort
internetsort
cellsort
urbansort;
by Country 'Year'n;
if 'Outbound Tourism'n = "." then delete;
run;

proc print data=mergeouttourdata;
run;


/*Outbound Tourism Regression*/
proc reg data=mergeouttourdata;
model 'Outbound Tourism'n = land cell air gdp internet population 'Population Density'n urban growth fdi 'Life Expectancy'n physicians/vif;
run;

/*Residuals indicate transformation*/
/*Remove Air and GDP for remainder of model building due to high VIF*/

/*Residuals indicate a transformation might be in order*/
proc transreg data=mergeouttourdata;
	model boxcox('Outbound Tourism'n) = identity(land cell internet population 'Population Density'n urban growth fdi 'Life Expectancy'n physicians);
run;

/*Suggested lambda = 0 (ie log transformation)*/
data logouttour;
set mergeouttourdata;
'Trans Outbound Tourism'n = log('Outbound Tourism'n);
run;

/*Final Model for Outbound Tourism*/
proc reg data=logouttour;
model 'Trans Outbound Tourism'n = land population urban physicians;
run;






/***************Inbound Tourism Regression Begin*****************/


data mergeintourdata;
merge 
Phsort
intoursort
popdensort
growthsort
landsort
lifesort
fdisort
airsort
popsort
cellsort
internetsort
gdpsort
urbansort;
by Country 'Year'n;
if 'Inbound Tourism'n = "." then delete;
run;

/*Full model to examine residuals*/
proc reg data=mergeintourdata;
model 'Inbound Tourism'n  = land cell internet population 'Population Density'n urban growth fdi 'Life Expectancy'n physicians/ vif;
run;

/*Consider transformation*/
proc transreg data=mergeintourdata;
	model boxcox('Inbound Tourism'n) = identity(land cell internet population 'Population Density'n urban growth fdi 'Life Expectancy'n physicians);
run;

/*Recommended lambda = 0, ie log transformation*/
data  transintour;
set mergeintourdata;
'Trans Inbound Tourism'n = log('Inbound Tourism'n);
run;

/*Final model for Inbound Tourism*/
proc reg data=transintour;
model 'Trans Inbound Tourism'n = land internet population 'Population Density'n 'Life Expectancy'n physicians;
run;


/********************Begin Immigration Regression*********************/
data mergeimmigration;
merge 
Phsort
immigrationsort
popdensort
growthsort
landsort
lifesort
fdisort
airsort
popsort
cellsort
internetsort
gdpsort
urbansort;
by Country 'Year'n;
if Immigration = "." then delete;
run;


/*Residuals indicate transformation might be needed*/
proc reg data=mergeimmigration;
model immigration = land cell internet population 'Population Density'n urban growth fdi 'Life Expectancy'n physicians;
run;

/*Explore transformation*/
proc transreg data=mergeimmigration;
	model boxcox(immigration) = identity(land cell internet population 'Population Density'n urban growth fdi 'Life Expectancy'n  physicians);
run;


/*Recommended transformation of lambda = 0.25*/
data transimmdata;
set mergeimmigration;
'Trans Immigration'n = immigration ** 0.25;
run;


/*Final model for Immigration*/
proc reg data=transimmdata;
model 'Trans Immigration'n= cell internet population urban 'Life Expectancy'n;
run;



/**************Begin Emigration Regression*********************/
data mergeemigration;
merge 
Phsort
emigrationsort
popdensort
growthsort
landsort
lifesort
fdisort
airsort
popsort
cellsort
internetsort
gdpsort
urbansort;
by Country 'Year'n;
if emigration = "." then delete;
if emigration < 1 then delete;
run;

/*Residuals indicate transformation*/
proc reg data=mergeemigration;
model emigration = land air cell internet population gdp 'Population Density'n urban growth fdi 'Life Expectancy'n physicians;
run;

/*Explore transformation*/
proc transreg data=mergeemigration;
	model boxcox(emigration) = identity(land cell internet population 'Population Density'n urban growth fdi 'Life Expectancy'n physicians);
run;

/*Recommended lambda = 0, ie log transformation*/
data transemdata;
set mergeemigration;
'Trans Emigration'n = log(emigration);
run;

/*Final model for Emigration*/
proc reg data=transemdata;
model 'Trans Emigration'n = land population growth;
run;

/**********Time Series******************/

/*Emigration Time Series*/
proc sort data=emigrationdata2 out=emsorttime;
by 'Year'n;
run;

proc means data=emsorttime noprint;
var emigration;
by 'Year'n;
output out=emtime mean(emigration) = 'Emigration Avg'n;
run;

proc sgplot data=emtime;
series x='Year'n y='Emigration Avg'n;
xaxis values=(2000 to 2016 by 1);
run;

/*Immigration Time Series*/
proc sort data=immigrationdata2 out=imsorttime;
by 'Year'n;
run;

proc means data=imsorttime noprint;
var immigration;
by 'Year'n;
output out=imtime mean(immigration) = 'Immigration Avg'n;
run;

proc sgplot data=imtime;
series x='Year'n y='Immigration Avg'n;
xaxis values=(2000 to 2016 by 1);
run;

/*Outbound Tourism Time Series*/
proc sort data=outtourdata2 out=outsorttime;
by 'Year'n;
run;

proc means data=outsorttime noprint;
var 'Outbound Tourism'n;
by 'Year'n;
output out=outtime mean('Outbound Tourism'n) = 'Outbound Tourism Avg'n;
run;

proc sgplot data=outtime;
series x='Year'n y='Outbound Tourism Avg'n;
xaxis values=(2008 to 2017 by 1);
run;

/*Inbound Tourism Time Series*/
proc sort data=intourdata2 out=insorttime;
by 'Year'n;
run;

proc means data=insorttime noprint;
var 'Inbound Tourism'n;
by 'Year'n;
output out=intime mean('Inbound Tourism'n) = 'Inbound Tourism Avg'n;
run;

proc sgplot data=intime;
series x='Year'n y='Inbound Tourism Avg'n;
xaxis values=(2008 to 2017 by 1);
run;



/********************Data Exploration**************************/

/*Internet vs Outbound scatter*/
data internetout;
merge 
internetsort
outtoursort;
by Country 'Year'n;
if internet = "." then delete;
else if 'Outbound Tourism'n = "." then delete;
run;

proc sgplot data=internetout;
scatter x=internet y='Outbound Tourism'n ;
run;

proc corr data=internetout;
var internet 'Outbound Tourism'n;
run;

/*Cell vs Outbound scatter*/
data cellout;
merge 
cellsort
outtoursort;
by Country 'Year'n;
if cell = "." then delete;
else if 'Outbound Tourism'n  = "." then delete;
run;

proc sgplot data=cellout;
scatter x=cell y='Outbound Tourism'n ;
run;

proc corr data=cellout;
var cell 'Outbound Tourism'n ;
run;

/*Internet vs Inbound*/
data internetin;
merge 
internetsort
intoursort;
by Country 'Year'n;
if internet = "." then delete;
else if 'Inbound Tourism'n  = "." then delete;
run;

proc sgplot data=internetin;
scatter x=internet y='Inbound Tourism'n ;
run;

proc corr data=internetin;
var internet 'Inbound Tourism'n ;
run;

/*Cell vs Inbound*/
data cellin;
merge 
cellsort
intoursort;
by Country 'Year'n;
if cell = "." then delete;
else if 'Inbound Tourism'n  = "." then delete;
run;

proc sgplot data=cellin;
scatter x=cell y='Inbound Tourism'n;
run;

proc corr data=cellin;
var cell 'Inbound Tourism'n;
run;

/*Internet vs Emigration*/
data emin;
merge 
internetsort
emigrationsort;
by Country 'Year'n;
if internet = "." then delete;
else if emigration = "." then delete;
run;

proc sgplot data=emin;
scatter x=internet y=emigration;
run;

proc corr data=emin;
var internet emigration;
run;

/*Cell vs Emigration*/
data cellem;
merge 
cellsort
emigrationsort;
by Country 'Year'n;
if cell = "." then delete;
else if emigration = "." then delete;
run;

proc sgplot data=cellem;
scatter x=cell y=emigration;
run;

proc corr data=cellem;
var cell emigration;
run;

/*Internet vs Immigration*/
data inim;
merge 
internetsort
immigrationsort;
by Country 'Year'n;
if internet = "." then delete;
else if immigration = "." then delete;
run;

proc sgplot data=inim;
scatter x=internet y=immigration;
run;

proc corr data=inim;
var internet immigration;
run;

/*Cell vs Immigration*/
data cellim;
merge 
cellsort
immigrationsort;
by Country 'Year'n;
if cell = "." then delete;
else if immigration = "." then delete;
run;

proc sgplot data=cellim;
scatter x=cell y=immigration;
run;

proc corr data=cellim;
var cell immigration;
run;
