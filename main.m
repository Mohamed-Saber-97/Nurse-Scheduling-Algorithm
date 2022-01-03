%-------------------------------------------------------------------------%
%           N  U  R  S  E  S  C  H  E  D  U  L  I  N  G   P R O B L E M   %
%           A  S  i  m  u  l  a  t  e  d  A  n  n  e  a  l  i  n  g       %
%-------------------------------------------------------------------------%
clc;
%-------------------------------------------------------------------------%
%                                                      Genatic Algorithm  %
%-------------------------------------------------------------------------%
objectFunction = @fitnessFunction;
numberOfVariables = 7;
lowerBound = [0 0 0 0 0 0 0];
upperBound = [];
constraintFunction = @Constraint; 
options = optimoptions('ga','MaxStallGenerations',50); 
options = optimoptions('ga','PlotFcn',@gaplotbestf,'Display','iter'); 
% For Reproducibility
rng default;
[X,finalValue] = ga(objectFunction,numberOfVariables,[],[],[],[],lowerBound,upperBound,constraintFunction,options);
X = ceil(X);
finalValue=ceil(finalValue);
bar(X);
xlabel('Days');
ylabel('Nurses');
title('Optimal Number Of Nurses/Day');
fprintf("-------------------------------------------------------------------------------------------\n");
fprintf("| Number of Nurses | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday |\n");
fprintf("-------------------------------------------------------------------------------------------\n");
fprintf("|       %d         |   %d    |    %d    |     %d     |    %d     |    %d   |    %d     |   %d    |\n",finalValue,X(1),X(2),X(3),X(4),X(5),X(6),X(7));
fprintf("-------------------------------------------------------------------------------------------\n");