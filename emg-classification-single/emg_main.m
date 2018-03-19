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
reza04 = xlsread('data/EO_RZ_04.xlsx','A3:H375');
reza05 = xlsread('data/EO_RZ_05.xlsx','A3:H352');
reza06 = xlsread('data/EO_RZ_06.xlsx','A3:H338');

%% GL

GLagnes1 = agnes01(:,7);
GLagnes2 = agnes02(:,7);
GLagnes3 = agnes03(:,7);

GLbayu1 = bayu01(:,7);
GLbayu2 = bayu02(:,7);

GLhengki1 = hengki01(:,7);
GLhengki2 = hengki02(:,7);
GLhengki3 = hengki03(:,7);

GLlydia1 = lydia01(:,7);
GLlydia2 = lydia02(:,7);
GLlydia3 = lydia03(:,7);

GLmerano1 = merano01(:,7);
GLmerano2 = merano02(:,7);
GLmerano3 = merano03(:,7);
GLmerano4 = merano04(:,7);
GLmerano5 = merano05(:,7);
GLmerano6 = merano06(:,7);

GLpanji1 = panji01(:,7);
GLpanji2 = panji02(:,7);
GLpanji3 = panji03(:,7);
GLpanji4 = panji04(:,7);
GLpanji5 = panji05(:,7);

GLreza1 = reza01(:,7);
GLreza2 = reza02(:,7);
GLreza3 = reza03(:,7);
GLreza4 = reza04(:,7);
GLreza5 = reza05(:,7);
GLreza6 = reza06(:,7);


%% Fitur and indexing

data = [fitur(GLagnes1) 1; fitur(GLagnes2) 1; fitur(GLbayu1) 2; fitur(GLhengki1) 3; fitur(GLhengki2) 3; fitur(GLlydia1) 4; fitur(GLlydia2) 4; fitur(GLmerano1) 5; fitur(GLmerano2) 5; fitur(GLmerano3) 5; fitur(GLmerano4) 5; fitur(GLmerano5) 5; fitur(GLpanji1) 6; fitur(GLpanji2) 6; fitur(GLpanji3) 6; fitur(GLpanji4) 6; fitur(GLreza1) 7; fitur(GLreza2) 7; fitur(GLreza3) 7; fitur(GLreza4) 7; fitur(GLreza5) 7];

%% Feature extraction

dataTest = [];

% init sampling to be same size as data
for i=1 : size(data,1)
    % sampling people data -> must be extract with feature
    % set 0 index to avoid the operation with data index
    selData = [fitur(GLreza5) 0];

    % add data to matrix incrementaly
    dataTest = [dataTest; selData];
end

res = abs(data - dataTest);
getVal = res(:,1:11);
getIndx = res(:,14);
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
