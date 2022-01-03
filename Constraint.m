%-------------------------------------------------------------------------%
%                                           Create a Constaints Function  %
%-------------------------------------------------------------------------%
%2 outputs LinearConstraint and EqualityConstraint
function [LinearConstraint, EqualityConstraint] = Constraint(X)
Monday = X(1);
Tuesday = X(2);
Wednesday = X(3);
Thursday = X(4);
Friday = X(5);
Saturday = X(6);
Sunday = X(7);
%Each nurse should work 3 consecutive days shifts and then has 4 days off
%At least half of the nurses should have atleast one day weekend off
EqualityConstraint=[-Monday-Saturday-Sunday+16;
   -Monday-Tuesday-Sunday+12;
   -Monday-Tuesday-Wednesday+18;
   -Tuesday-Wednesday-Thursday+13;
   -Wednesday-Thursday-Friday+15;
   -Thursday-Friday-Saturday+9;
   -Friday-Saturday-Sunday+7;
   -Monday-Tuesday-Wednesday+Thursday+Friday+Saturday+Sunday+0.5];
LinearConstraint=[];
end
