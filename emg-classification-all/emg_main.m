%% Data

% Muscle (RF, VM, VL, ST, GM, BF, GL, TA)
% RF = Rectus femoris
% VM = Vastus Medialis
% VL = Vastus Lateralis
% ST = Semi Tendinosus
% GM = Glatenius Maximus, Minimus or Medius
% BF = Bisep Femoris
% GL = Gastrocnemius Lateralis
% TA = Tibialis Anterior

agnes01 = xlsread('data/EO_AG_01.xlsx','A3:H473');
agnes02 = xlsread('data/EO_AG_02.xlsx','A3:H389');
agnes03 = xlsread('data/EO_AG_03.xlsx','A3:H383');

bayu01 = xlsread('data/EO_Bayu_01.xlsx','A3:H593');
bayu02 = xlsread('data/EO_Bayu_02.xlsx','A3:H568');

hengki01 = xlsread('data/EO_Hengki_01.xlsx','A3:H391');
hengki02 = xlsread('data/EO_Hengki_02.xlsx','A3:H365');
hengki03 = xlsread('data/EO_Hengki_03.xlsx','A3:H354');

lydia01 = xlsread('data/EO_Lydia_01.xlsx','A3:H395');
lydia02 = xlsread('data/EO_Lydia_02.xlsx','A3:H374');
lydia03 = xlsread('data/EO_Lydia_03.xlsx','A3:H381');
lydia04 = xlsread('data/EO_Lydia_04.xlsx','A3:H371');

merano01 = xlsread('data/EO_Merano_01.xlsx','A3:H336');
merano02 = xlsread('data/EO_Merano_02.xlsx','A3:H379');
merano03 = xlsread('data/EO_Merano_03.xlsx','A3:H381');
merano04 = xlsread('data/EO_Merano_04.xlsx','A3:H883');
merano05 = xlsread('data/EO_Merano_05.xlsx','A3:H803');
merano06 = xlsread('data/EO_Merano_06.xlsx','A3:H799');

panji01 = xlsread('data/EO_Panji_01.xlsx','A3:H416');
panji02 = xlsread('data/EO_Panji_02.xlsx','A3:H404');
panji03 = xlsread('data/EO_Panji_03_awal.xlsx','A3:H394');
panji04 = xlsread('data/EO_Panji_04.xlsx','A3:H436');
panji05 = xlsread('data/EO_Panji_05.xlsx','A3:H465');

reza01 = xlsread('data/EO_RZ_01.xlsx','A3:H549');
reza02 = xlsread('data/EO_RZ_02.xlsx','A3:H405');
reza03 = xlsread('data/EO_RZ_03.xlsx','A3:H338');
reza04 = xlsread('data/EO_RZ_04.xlsx','A3:H352');
reza05 = xlsread('data/EO_RZ_05.xlsx','A3:H338');


%% Fitur and index all muscle

data = [fitur(agnes01(:,1)) ...
    fitur(agnes01(:,2)) ...
    fitur(agnes01(:,3)) ...
    fitur(agnes01(:,4)) ...
    fitur(agnes01(:,5)) ...
    fitur(agnes01(:,6)) ...
    fitur(agnes01(:,7)) ...
    fitur(agnes01(:,8)) 1; ...

    fitur(agnes02(:,1)) ...
    fitur(agnes02(:,2)) ...
    fitur(agnes02(:,3)) ...
    fitur(agnes02(:,4)) ...
    fitur(agnes02(:,5)) ...
    fitur(agnes02(:,6)) ...
    fitur(agnes02(:,7)) ...
    fitur(agnes02(:,8)) 1; ...
    
    fitur(bayu01(:,1)) ...
    fitur(bayu01(:,2)) ...
    fitur(bayu01(:,3)) ...
    fitur(bayu01(:,4)) ...
    fitur(bayu01(:,5)) ...
    fitur(bayu01(:,6)) ...
    fitur(bayu01(:,7)) ...
    fitur(bayu01(:,8)) 2; ...
    
    fitur(hengki01(:,1)) ...
    fitur(hengki01(:,2)) ...
    fitur(hengki01(:,3)) ...
    fitur(hengki01(:,4)) ...
    fitur(hengki01(:,5)) ...
    fitur(hengki01(:,6)) ...
    fitur(hengki01(:,7)) ...
    fitur(hengki01(:,8)) 3; ...
    
    fitur(hengki02(:,1)) ...
    fitur(hengki02(:,2)) ...
    fitur(hengki02(:,3)) ...
    fitur(hengki02(:,4)) ...
    fitur(hengki02(:,5)) ...
    fitur(hengki02(:,6)) ...
    fitur(hengki02(:,7)) ...
    fitur(hengki02(:,8)) 3; ...
    
    fitur(lydia01(:,1)) ...
    fitur(lydia01(:,2)) ...
    fitur(lydia01(:,3)) ...
    fitur(lydia01(:,4)) ...
    fitur(lydia01(:,5)) ...
    fitur(lydia01(:,6)) ...
    fitur(lydia01(:,7)) ...
    fitur(lydia01(:,8)) 4; ...
    
    fitur(lydia02(:,1)) ...
    fitur(lydia02(:,2)) ...
    fitur(lydia02(:,3)) ...
    fitur(lydia02(:,4)) ...
    fitur(lydia02(:,5)) ...
    fitur(lydia02(:,6)) ...
    fitur(lydia02(:,7)) ...
    fitur(lydia02(:,8)) 4; ...
    
    fitur(merano01(:,1)) ...
    fitur(merano01(:,2)) ...
    fitur(merano01(:,3)) ...
    fitur(merano01(:,4)) ...
    fitur(merano01(:,5)) ...
    fitur(merano01(:,6)) ...
    fitur(merano01(:,7)) ...
    fitur(merano01(:,8)) 5; ...
    
    fitur(merano02(:,1)) ...
    fitur(merano02(:,2)) ...
    fitur(merano02(:,3)) ...
    fitur(merano02(:,4)) ...
    fitur(merano02(:,5)) ...
    fitur(merano02(:,6)) ...
    fitur(merano02(:,7)) ...
    fitur(merano02(:,8)) 5; ...
    
    fitur(merano03(:,1)) ...
    fitur(merano03(:,2)) ...
    fitur(merano03(:,3)) ...
    fitur(merano03(:,4)) ...
    fitur(merano03(:,5)) ...
    fitur(merano03(:,6)) ...
    fitur(merano03(:,7)) ...
    fitur(merano03(:,8)) 5; ...
    
    fitur(merano04(:,1)) ...
    fitur(merano04(:,2)) ...
    fitur(merano04(:,3)) ...
    fitur(merano04(:,4)) ...
    fitur(merano04(:,5)) ...
    fitur(merano04(:,6)) ...
    fitur(merano04(:,7)) ...
    fitur(merano04(:,8)) 5; ...
    
    fitur(merano05(:,1)) ...
    fitur(merano05(:,2)) ...
    fitur(merano05(:,3)) ...
    fitur(merano05(:,4)) ...
    fitur(merano05(:,5)) ...
    fitur(merano05(:,6)) ...
    fitur(merano05(:,7)) ...
    fitur(merano05(:,8)) 5; ...
    
    fitur(panji01(:,1)) ...
    fitur(panji01(:,2)) ...
    fitur(panji01(:,3)) ...
    fitur(panji01(:,4)) ...
    fitur(panji01(:,5)) ...
    fitur(panji01(:,6)) ...
    fitur(panji01(:,7)) ...
    fitur(panji01(:,8)) 6; ...
    
    fitur(panji02(:,1)) ...
    fitur(panji02(:,2)) ...
    fitur(panji02(:,3)) ...
    fitur(panji02(:,4)) ...
    fitur(panji02(:,5)) ...
    fitur(panji02(:,6)) ...
    fitur(panji02(:,7)) ...
    fitur(panji02(:,8)) 6; ...
    
    fitur(panji03(:,1)) ...
    fitur(panji03(:,2)) ...
    fitur(panji03(:,3)) ...
    fitur(panji03(:,4)) ...
    fitur(panji03(:,5)) ...
    fitur(panji03(:,6)) ...
    fitur(panji03(:,7)) ...
    fitur(panji03(:,8)) 6; ...
    
    fitur(panji04(:,1)) ...
    fitur(panji04(:,2)) ...
    fitur(panji04(:,3)) ...
    fitur(panji04(:,4)) ...
    fitur(panji04(:,5)) ...
    fitur(panji04(:,6)) ...
    fitur(panji04(:,7)) ...
    fitur(panji04(:,8)) 6; ...
    
    fitur(reza01(:,1)) ...
    fitur(reza01(:,2)) ...
    fitur(reza01(:,3)) ...
    fitur(reza01(:,4)) ...
    fitur(reza01(:,5)) ...
    fitur(reza01(:,6)) ...
    fitur(reza01(:,7)) ...
    fitur(reza01(:,8)) 7; ...
    
    fitur(reza02(:,1)) ...
    fitur(reza02(:,2)) ...
    fitur(reza02(:,3)) ...
    fitur(reza02(:,4)) ...
    fitur(reza02(:,5)) ...
    fitur(reza02(:,6)) ...
    fitur(reza02(:,7)) ...
    fitur(reza02(:,8)) 7; ...
    
    fitur(reza03(:,1)) ...
    fitur(reza03(:,2)) ...
    fitur(reza03(:,3)) ...
    fitur(reza03(:,4)) ...
    fitur(reza03(:,5)) ...
    fitur(reza03(:,6)) ...
    fitur(reza03(:,7)) ...
    fitur(reza03(:,8)) 7; ...

    fitur(reza04(:,1)) ...
    fitur(reza04(:,2)) ...
    fitur(reza04(:,3)) ...
    fitur(reza04(:,4)) ...
    fitur(reza04(:,5)) ...
    fitur(reza04(:,6)) ...
    fitur(reza04(:,7)) ...
    fitur(reza04(:,8)) 7];

%% Feature extraction

dataTest = [];

% init sampling to be same size as data
for i=1 : size(data,1)
    % sampling people data -> must be extract with feature
    % set 0 index to avoid the operation with data index
    selData = [fitur(reza05(:,1)) ...
    fitur(reza05(:,2)) ...
    fitur(reza05(:,3)) ...
    fitur(reza05(:,4)) ...
    fitur(reza05(:,5)) ...
    fitur(reza05(:,6)) ...
    fitur(reza05(:,7)) ...
    fitur(reza05(:,8)) 0];

    % add data to matrix incrementaly
    dataTest = [dataTest; selData];
end

res = abs(data - dataTest);
getVal = res(:,1:104);
getIndx = res(:,105);
sumVal = sum(getVal');
finRes = [sumVal' getIndx];
KNN = sortrows(finRes);

if(KNN(1,2) == 1)
    fprintf('Data EMG tersebut adalah Agnes\n')
elseif(KNN(1,2) == 2)
    fprintf('Data EMG tersebut adalah Bayu\n')
elseif(KNN(1,2) == 3)
    fprintf('Data EMG tersebut adalah Hengki\n')
elseif(KNN(1,2) == 4)
    fprintf('Data EMG tersebut adalah Lydia\n')
elseif(KNN(1,2) == 5)
    fprintf('Data EMG tersebut adalah Merano\n')
elseif(KNN(1,2) == 6)
    fprintf('Data EMG tersebut adalah Panji\n')
elseif(KNN(1,2) == 7)
    fprintf('Data EMG tersebut adalah Reza\n')
end

%% Debuging only

% agnes = sum(res(1,1:13));
% bayu = sum(res(2,1:13));
% hengki = sum(res(3,1:13));
% lydia = sum(res(4,1:13));
% tes = [agnes; bayu; hengki; lydia];

% figure(1)
% plot(GLagnes1);
% hold on;
% plot(GLbayu1);
% hold on;
% plot(GLhengki1);
% hold on;
% plot(GLlydia1);
% hold on;
% plot(GLmerano1);
% hold on;
% plot(GLpanji1);
% hold on;
% plot(GLreza1);
% hold on;

% figure(2)
% plot(GLagnes2);
% hold on;
% plot(GLbayu2);
% hold on;
% plot(GLhengki2);
% hold on;
% plot(GLlydia2);
% hold on;
% plot(GLmerano2);
% hold on;
% plot(GLpanji2);
% hold on;
% plot(GLreza2);
% hold on;