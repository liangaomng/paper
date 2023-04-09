%feature Wavelet networks 4order sin  Zhang Q, Benveniste A (1992) Wavelet networks. ITNN 3(6):889-898. DOI: 10.1109/72.165591
%Data Defination
load('Trian_Test_DataSet.mat');
Id_input_train=Train_Data(:,2:4);
Id_output_train=Train_Data(:,1);

Id_input_test=Test_Data(:,2:4);
Id_output_test=Test_Data(:,1);
% %model
% %                                                      
% % % Details about Estimation Data                                             
%  % Import   mydata                                                          
%                                                                             
% % Estimation of Nonlinear ARX model                                         
% % Create Regressors                                                         
% Vars = {'y1', 'u1', 'u2', 'u3'};                                            
% Lags = {[1 2], [1 2], [1 2], [1 2]};                                        
% R1 = linearRegressor(Vars, Lags);                                           
%                                                                             
% Vars = {'y1', 'u1', 'u2', 'u3'};                                            
% Lags = {[1 2], [1 2], [1 2], [1 2]};                                        
% R2 = periodicRegressor(Vars, Lags, 0.5, 4);                                 
%                                                                             
% Regressors = [R1; R2];                                                      
% % Create Output Function                                                    
% NL = idWaveletNetwork;      
% NL.NonlinearFcn.NumberOfUnits=10;
% % Create a template IDNLARX model                                           
% initialModel = idnlarx(mydata.OutputName, mydata.InputName, Regressors, NL);
%                                                                             
% Options = nlarxOptions;                                                     
%                                                                             
% % Estimate a Nonlinear ARX Model                                            
% nlarx1 = nlarx(mydata, initialModel, Options); 
nlarx_modelA=nlarx1;
compare(Valid_data,nlarx_modelA,'--');
pos=axis;
ylabel("Response/m");
xlabel("",'position',[-200,0]);
%plot(mydata);




                                                   