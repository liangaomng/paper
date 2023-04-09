                                                   
% Details about Estimation Data                    
 % Import   mydata                                 
% Export   mydata                                  
 % Import   mydata                                 
% Export   mydata                                  
 % Import   mydata                                 
                                                   
% Estimation of Hammerstein-Wiener model           
                                                   
% Define orders of linear block                    
nb = [2 2 2];                                      
nf = [3 3 3];                                      
nk = [1 1 1];                                      
                                                   
% Create Input Nonlinearity                        
nl1 = idWaveletNetwork;                            
                                                   
nl2 = idWaveletNetwork;                            
                                                   
nl3 = idWaveletNetwork;                            
nl3.NonlinearFcn.NumberOfUnits = 10;               
                                                   
inputNL = [nl1; nl2; nl3];                         
                                                   
% Create Output Nonlinearity                       
nl1 = idWaveletNetwork;                            
nl1.NonlinearFcn.NumberOfUnits = 10;               
                                                   
outputNL = [nl1];                                  
                                                   
% Create a template IDNLHW model                   
initialModel = idnlhw([nb nf nk],inputNL,outputNL);
                                                   
 Options = nlhwOptions;                            
                                                   
 Options.Display = 'on';                           
 Options.Regularization.Lambda = 1;                
 Options.SearchMethod = 'gn';                      
 Options.SearchOptions.Tolerance = 0.01;           
 Options.SearchOptions.MaxIterations = 30;         
                                                   
% Estimate Hammerstein-Wiener Model                
 nlhw3 = nlhw(mydata, initialModel, Options);      