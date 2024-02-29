%take user needed based on Knowledge-based system / expert system 
recomend(Car) :-  write('What is your  preferred car company? '),read(Com),
    write('what is your preferred year model : '),read(Year),
    write('what is the maximum car capacity  : '),read(Cap),
    write('what is your preferred fule type  : '),read(Fule), 
    vehicle(Car,_,Com,Year,Cap,Fule,_).
    

% Facts take (car name , Copmany name ) Classified Fuel type as follows :
% 'es' which is car name is 'Hybrid Fuel' from 'lexus' which is company name 
isHybrid(es,lexus).
% 'rush' which is car name is 'Hybrid Fuel' from 'toyota' which is company name 
isHybrid(rush,toyota).
% 'tucson' which is car name is Hybrid Fuel from 'hyundai' which is company name 
isHybrid(tucson,hyundai).
% 'camry' which is car name is 'Gasoline Fuel' from 'toyota' which is company name 
isGasoline(camry,toyota).
% 'corolla' which is car name is 'Gasoline' Fuel from 'toyota' which is company name 
isGasoline(corolla,toyota).
% 'iS' which is car name is 'Gasoline Fuel' from 'lexus' which is company name
isGasoline(iS,lexus).
% 'nx' which is car name is 'Gasoline Fuel' from 'lexus' which is company name
isGasoline(nx,lexus).
% 'elantra' which is car name is 'Gasoline Fuel' from 'hyundai' which is company name 
isGasoline(elantra,hyundai).
% 'sonata' which is car name is 'Gasoline Fuel' from 'hyundai' which is company name 
isGasoline(sonata,hyundai).
% 'maybach' which is car name is 'Gasoline Fuel' from 'mercedes' which is company name
isGasoline(maybach,mercedes).
% 'gClassSuv' which is car name is 'Gasoline Fuel' from 'mercedes' which is company name 
isGasoline(gClassSuv,mercedes).
% '_ ' its mean all 'car '  in 'GMC' company is 'Gasoline Fuel' 
isGasoline(_,gmc).
% 'eqsSuv' which is car name is 'Electric' from 'mercedes' which are company name 
isElectric(eqsSuv,mercedes).



% Facts take (car name , Copmany name ) category of Expensive cars which price > 50,000$ 
% '_ ' its mean all 'car '  in 'mercedes' company are 'Expensive'
isExpensive(_,mercedes).
% 'yukonDenali' which is car name is 'Expensive' from 'mercedes' 
isExpensive(yukonDenali,gmc).
% 'sierra' which is car name is 'Expensive' from 'gmc' 
isExpensive(sierra,gmc).
% '_ ' its mean all 'car '  in 'lexus' company are 'Expensive' 
isExpensive(_,lexus).


% Facts take (car name , Copmany name ) category of small Car which Passengers Capacity <= 5 
% 'camry'  is  'small Car' from 'toyota' 
smallCar(camry,toyota).
% 'corolla'  is  'small Car' from 'toyota' 
smallCar(corolla,toyota).
% 'es'  is  'small Car' from 'lexus'
smallCar(es,lexus).
% 'iS'  is  'small Car' from 'lexus'
smallCar(iS,lexus).
% 'elantra'  is  'small Car' from 'hyundai' 
smallCar(elantra,hyundai).
% 'sonata'  is  'small Car' from 'hyundai' 
smallCar(sonata,hyundai).
% 'maybach'  is  'small Car' from 'mercedes' 
smallCar(maybach,mercedes).
% 'sierra'  is  'small Car' from 'gmc' 
smallCar(sierra,gmc).


% Facts take (car name , Copmany name ) category of Large Car which Passengers Capacity > 5 
% 'yukonDenali'  is  'Large Car' from 'gmc' 
isLarge(yukonDenali,gmc).
% 'eqsSuv'  is  'Large Car' from 'mercedes' 
isLarge(eqsSuv,mercedes).
% 'tucson'  is  'Large Car' from 'hyundai' 
isLarge(tucson,hyundai).
% 'nx'  is  'Large Car' from 'lexus' 
isLarge(nx,lexus).
% 'rush'  is  'Large Car' from 'toyota' 
isLarge(rush,toyota).


% vehicle(Car Source ,Car name ,Car Company,Year,Passengers Capacity,Fule type ,Price). which Car Company=toyota
vehicle('car is camry You can buy it : https://www.toyota.com.sa/en/vehicles/passenger/Camry', camry,toyota,Year,Cap,Fule,P):- Year=2023 , Cap=5, Fule=gasoline,P='$26,465',!.
vehicle('car is corolla You can buy it : https://www.toyota.com.sa/en/vehicles/passenger/Corolla', corolla,toyota,Year,Cap,Fule,P):- Year=2023 , Cap=5, Fule=gasoline,P='$20,792',!.
vehicle('car is Rush You can buy it : https://www.toyota.com.sa/en/vehicles/suv/Rush', rush,toyota,Year,Cap,Fule,P):- Year=2023 , Cap=8, Fule=hybrid,P='$19,534',!.

% vehicle(Car Source ,Car name ,Car Company,Year,Passengers Capacity,Fule type ,Price). which Car Company=lexus
vehicle('car is IS You can buy it : https://www.lexus.com.sa/en/IS', is,lexus,Year,Cap,Fule,P):- Year=2023 , Cap=5, Fule=gasoline,P='$49,913',!.
vehicle('car is ES You can buy it : https://www.lexus.com.sa/en/ES', es,lexus,Year,Cap,Fule,P):- Year=2023 , Cap=5, Fule=hybrid,P='$54,280',!.
vehicle('car is NX You can buy it : https://www.lexus.com.sa/en/NX ', nx,lexus,Year,Cap,Fule,P):- Year=2023 , Cap=8, Fule=gasoline,P='$58,021',!.


% vehicle(Car Source ,Car name ,Car Company,Year,Passengers Capacity,Fule type ,Price). which Car Company=hyundai
vehicle('car is elantra You can buy it : https://www.hyundai.com/worldwide/en/cars/elantra-2020/highlights  ', elantra,hyundai,Year,Cap,Fule,P):- Year=2020 , Cap=5, Fule=gasoline,P='$19,650',!.
vehicle('car is sonata You can buy it : https://www.hyundai.com/worldwide/en/cars/sonata-2019/highlights  ', sonata,hyundai,Year,Cap,Fule,P):- Year=2019 , Cap=5, Fule=gasoline,P='$24,350',!.
vehicle('car is tucson You can buy it: https://www.hyundai.com/worldwide/en/suv/tucson-2021/hybrid', tucson,hyundai,Year,Cap,Fule,P):- Year=2021 , Cap=8, Fule=hybrid,P='$21,505',!.


%vehicle(Car Source ,Car name ,Car Company,Year,Passengers Capacity,Fule type ,Price). which Car Company=mercedes
vehicle('car is Maybach You can buy it : https://www.mbusa.com/en/vehicles/model/s-class/maybach/s680z4 ', maybach,mercedes,Year,Cap,Fule,P):- Year=2022 , Cap=5, Fule=gasoline,P='$229,000',!.
vehicle('car is eqs suv You can buy it : https://www.mbusa.com/en/vehicles/model/eqs/suv/eqs580x4   ', 'eqs suv',mercedes,Year,Cap,Fule,P):- Year=2023 , Cap=7, Fule=electric,P='$125,950',!.
vehicle('car is g-class-suv You can buy it: https://www.mbusa.com/en/vehicles/class/g-class/suv', 'g class suv',mercedes,Year,Cap,Fule,P):- Year=2022 , Cap=5, Fule=gasoline,P='$139,900',!.

% vehicle(Car Source ,Car name ,Car Company,Year,Passengers Capacity,Fule type ,Price). which Car Company=gmc
vehicle('car is sierra You can buy it : https://www.gmc.com/trucks/sierra/1500/denali ', sierra,gmc,Year,Cap,Fule,P):- Year=2021 , Cap=3, Fule=gasoline,P='$65,800',!.
vehicle('car is yukon denali You can buy it : https://www.gmc.com/suvs/yukon/denali  ', 'yukon denali',gmc,Year,Cap,Fule,P):- Year=2023 , Cap=9, Fule=gasoline,P='$82,040',!.
vehicle('car is terrain Denali You can buy it: https://www.gmc.com/suvs/terrain/denali ', 'terrain Denali',gmc,Year,Cap,Fule,P):- Year=2023 , Cap=5, Fule=gasoline,P='$39,095',!.


% car is family if its (Hybrid or Gasoline or Electric ) and its Large car  and ( its Expensive or not)
familyCars(X,Y) :- (   (   isHybrid(X,Y) ; isGasoline(X,Y); isElectric(X,Y) ), isLarge(X,Y), (   not(isExpensive(X,Y)) ;isExpensive(X,Y))).
% car is Small if its (Hybrid or Gasoline or Electric ) and its Small car  and ( its Expensive or not)
smallerCars(X,Y) :- (   (   isHybrid(X,Y) ; isGasoline(X,Y); isElectric(X,Y) ), smallCar(X,Y), (   not(isExpensive(X,Y)) ;isExpensive(X,Y))).
% car is Fancy if (X=Car name and Y = Company name ) for mercedes or lexus
fancyCars(X,Y):-((X='eqsSuv';X='maybach';X='g class suv'), (   Y='mercedes'); (   X='es';X='iS';X='nx'),(   Y='lexus')).
% car is the best if its (Hybrid or Gasoline or Electric ) and its Small car and not Expensive
bestCar(X,Y) :- (   (   isHybrid(X,Y) ; isGasoline(X,Y) ;isElectric(X,Y) ), smallCar(X,Y), (   not(isExpensive(X,Y)))).


