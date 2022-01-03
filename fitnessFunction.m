%-------------------------------------------------------------------------%
%                                            Create a objective Function  %
%-------------------------------------------------------------------------%
function NumberOfNurses = fitnessFunction(X)
Monday = X(1);
Tuesday = X(2);
Wednesday = X(3);
Thursday = X(4);
Friday = X(5);
Saturday = X(6);
Sunday = X(7);
NumberOfNurses=Monday+Tuesday+Wednesday+Thursday+Friday+Saturday+Sunday;
end