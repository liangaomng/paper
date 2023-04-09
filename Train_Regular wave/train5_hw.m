%Data Defination
load('Trian_Test_DataSet.mat');
Id_input_train=Train_Data(:,2:4);
Id_output_train=Train_Data(:,1);

Id_input_test=Test_Data(:,2:4);
Id_output_test=Test_Data(:,1);
% % 10个断点
% % Details about Estimation Data                    
%  % Import   mydata                                 
% % Export   mydata                                  
%  % Import   mydata                                 
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
%                                                    
% nl2 = idPiecewiseLinear;                           
%                                                    
% nl3 = idPiecewiseLinear;                           
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
%  nlhw1 = nlhw(mydata, initialModel, Options);  

%compare 
nlhw_modelA=nlhw1;
compare(mydata,nlhw_modelA,'--');
ylabel("Response/m");
xlabel("",'position',[-200,0]);



