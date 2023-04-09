%Data Defination
load('Trian_Test_DataSet.mat');
Id_input_train=Train_Data(:,2:4);
Id_output_train=Train_Data(:,1);

Id_input_test=Test_Data(:,2:4);
Id_output_test=Test_Data(:,1);


                                                                            
% % Details about Estimation Data                                             
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
% NL = idSigmoidNetwork;  
% 
% % Create a template IDNLARX model                                           
% initialModel = idnlarx(mydata.OutputName, mydata.InputName, Regressors, NL);
%                                                                             
% Options = nlarxOptions;                                                     
%                                                                             
% % Estimate a Nonlinear ARX Model                                            
% nlarx3 = nlarx(mydata, initialModel, Options);  
% 

nlarx_modelC=nlarx3;
compare(mydata,nlarx_modelC,'--');
pos=axis;
ylabel("Response/m");
xlabel("",'position',[-200,0]);
