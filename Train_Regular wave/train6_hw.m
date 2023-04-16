%Data Defination
load('Trian_Test_DataSet.mat');
Id_input_train=Train_Data(:,2:4);
Id_output_train=Train_Data(:,1);

Id_input_test=Test_Data(:,2:4);
Id_output_test=Test_Data(:,1);
% 100个断点
% Details about Estimation Data                    
 % Import   mydata                                 
                              
%                                                    
% % Estimation of Hammerstein-Wiener model           
%                                                    
% % Define orders of linear block                    
% nb = [2 2 2];                                      
% nf = [3 3 3];                                      
% nk = [1 1 1];                                      
%                                                    
% % Create Input Nonlinearity                        
% nl1 = idPiecewiseLinear;                           
% nl1.NumberOfUnits = 100;                           
%                                                                              
% nl2 = idPiecewiseLinear;      
% nl2.NumberOfUnits = 100; 
%                                                    
% nl3 = idPiecewiseLinear;      
% nl3.NumberOfUnits = 100; 
%                                                    
% inputNL = [nl1; nl2; nl3];                         
%                                                    
% % Create Output Nonlinearity                       
% nl1 = idPiecewiseLinear;                           
%                                                    
% outputNL = [nl1];                                  
%                                                    
% % Create a template IDNLHW model                   
% initialModel = idnlhw([nb nf nk],inputNL,outputNL);
%                                                    
% Options = nlhwOptions;                            
%                                                    
%                                                    
% % Estimate Hammerstein-Wiener Model                
% nlhw2 = nlhw(mydata, initialModel, Options);  

%compare 
nlhw_modelB=nlhw2;
compare(Valid_data,nlhw_modelB,'--');
ylabel("Response/m");
xlabel("Sample",'position',[-200,-1000]);



