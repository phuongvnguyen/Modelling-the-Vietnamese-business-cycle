function [residual, g1, g2, g3] = vnversion174_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(25, 1);
kappaH__ = (1-params(6))*(1-params(6)*params(2))/params(6);
kappaF__ = (1-params(7))*(1-params(2)*params(7))/params(7);
T117 = (1-params(9))/params(4);
lhs =y(16);
rhs =params(17)*y(41)+(1-params(17))*y(1)+params(18)*y(17)+params(35)*x(it_, 1);
residual(1)= lhs-rhs;
lhs =y(17);
rhs =params(19)*y(42)+(1-params(19))*y(2)-params(20)*(y(18)-y(41))+params(36)*x(it_, 2);
residual(2)= lhs-rhs;
lhs =y(18);
rhs =params(21)*y(3)+(1-params(21))*(y(16)*params(23)+y(17)*params(22))+params(37)*x(it_, 3);
residual(3)= lhs-rhs;
lhs =y(19);
rhs =params(24)*y(4)+params(29)*x(it_, 4);
residual(4)= lhs-rhs;
lhs =y(20);
rhs =params(25)*y(5)+params(30)*x(it_, 5);
residual(5)= lhs-rhs;
lhs =y(21);
rhs =params(26)*y(6)+params(31)*x(it_, 6);
residual(6)= lhs-rhs;
lhs =y(22);
rhs =params(28)*y(7)+params(32)*x(it_, 7);
residual(7)= lhs-rhs;
lhs =(1+params(9))*y(24);
rhs =y(44)+params(9)*y(9)-T117*(y(29)-y(47))+T117*(y(20)-y(43));
residual(8)= lhs-rhs;
lhs =(1+params(2)*params(10))*y(26);
rhs =params(2)*y(45)+params(10)*y(11)+kappaH__*y(28);
residual(9)= lhs-rhs;
lhs =y(28);
rhs =params(5)*y(30)-y(19)*(1+params(5))+params(1)*y(23)+params(4)/(1-params(9))*(y(24)-params(9)*y(9));
residual(10)= lhs-rhs;
lhs =(1+params(2)*params(11))*y(27);
rhs =y(21)+params(2)*y(46)+params(11)*y(12)+kappaF__*(y(32)-y(23)*(1-params(1)));
residual(11)= lhs-rhs;
lhs =y(29)-y(47);
rhs =y(18)+y(48)-y(32)-y(41)-params(3)*y(25)-y(22);
residual(12)= lhs-rhs;
lhs =y(30);
rhs =y(23)*params(1)*params(8)*(2-params(1))+(y(32)-y(23)*(1-params(1)))*params(1)*params(8)+y(17)*params(1)+y(24)*(1-params(1));
residual(13)= lhs-rhs;
lhs =y(23);
rhs =y(27)-y(26)+y(8)+params(33)*x(it_, 8);
residual(14)= lhs-rhs;
lhs =y(31);
rhs =y(26)+params(1)*(y(23)-y(8));
residual(15)= lhs-rhs;
lhs =y(24)+y(25);
rhs =y(30)+1/params(2)*y(10)-params(1)*(params(1)*y(23)+y(32));
residual(16)= lhs-rhs;
lhs =y(29);
rhs =params(12)*y(13)+(1-params(12))*(y(31)*params(13)+y(30)*params(14)+params(15)*(y(30)-y(14))+params(16)*(y(31)+y(32)-y(15)-y(16)))+params(34)*x(it_, 9);
residual(17)= lhs-rhs;
lhs =100*log(1+y(33)/100);
rhs =y(30)-y(14)+params(38);
residual(18)= lhs-rhs;
lhs =100*log(1+y(34)/100);
rhs =y(31)+params(39);
residual(19)= lhs-rhs;
lhs =400*log(1+y(35)/400);
rhs =y(29)*4+params(40);
residual(20)= lhs-rhs;
lhs =100*log(1+y(36)/100);
rhs =y(32)-y(15)+params(41);
residual(21)= lhs-rhs;
lhs =100*log(1+y(37)/100);
rhs =y(23)-y(8)+params(42);
residual(22)= lhs-rhs;
lhs =100*log(1+y(38)/100);
rhs =y(16)+params(43);
residual(23)= lhs-rhs;
lhs =100*log(1+y(39)/100);
rhs =y(17)-y(2)+params(44);
residual(24)= lhs-rhs;
lhs =400*log(1+y(40)/400);
rhs =y(18)*4+params(45);
residual(25)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(25, 57);

  %
  % Jacobian matrix
  %

  g1(1,1)=(-(1-params(17)));
  g1(1,16)=1;
  g1(1,41)=(-params(17));
  g1(1,17)=(-params(18));
  g1(1,49)=(-params(35));
  g1(2,41)=(-params(20));
  g1(2,2)=(-(1-params(19)));
  g1(2,17)=1;
  g1(2,42)=(-params(19));
  g1(2,18)=params(20);
  g1(2,50)=(-params(36));
  g1(3,16)=(-((1-params(21))*params(23)));
  g1(3,17)=(-((1-params(21))*params(22)));
  g1(3,3)=(-params(21));
  g1(3,18)=1;
  g1(3,51)=(-params(37));
  g1(4,4)=(-params(24));
  g1(4,19)=1;
  g1(4,52)=(-params(29));
  g1(5,5)=(-params(25));
  g1(5,20)=1;
  g1(5,53)=(-params(30));
  g1(6,6)=(-params(26));
  g1(6,21)=1;
  g1(6,54)=(-params(31));
  g1(7,7)=(-params(28));
  g1(7,22)=1;
  g1(7,55)=(-params(32));
  g1(8,20)=(-T117);
  g1(8,43)=T117;
  g1(8,9)=(-params(9));
  g1(8,24)=1+params(9);
  g1(8,44)=(-1);
  g1(8,29)=T117;
  g1(8,47)=(-T117);
  g1(9,11)=(-params(10));
  g1(9,26)=1+params(2)*params(10);
  g1(9,45)=(-params(2));
  g1(9,28)=(-kappaH__);
  g1(10,19)=1+params(5);
  g1(10,23)=(-params(1));
  g1(10,9)=(-(params(4)/(1-params(9))*(-params(9))));
  g1(10,24)=(-(params(4)/(1-params(9))));
  g1(10,28)=1;
  g1(10,30)=(-params(5));
  g1(11,21)=(-1);
  g1(11,23)=(-(kappaF__*(-(1-params(1)))));
  g1(11,12)=(-params(11));
  g1(11,27)=1+params(2)*params(11);
  g1(11,46)=(-params(2));
  g1(11,32)=(-kappaF__);
  g1(12,41)=1;
  g1(12,18)=(-1);
  g1(12,22)=1;
  g1(12,25)=params(3);
  g1(12,29)=1;
  g1(12,47)=(-1);
  g1(12,32)=1;
  g1(12,48)=(-1);
  g1(13,17)=(-params(1));
  g1(13,23)=(-(params(1)*params(8)*(2-params(1))+params(1)*params(8)*(-(1-params(1)))));
  g1(13,24)=(-(1-params(1)));
  g1(13,30)=1;
  g1(13,32)=(-(params(1)*params(8)));
  g1(14,8)=(-1);
  g1(14,23)=1;
  g1(14,26)=1;
  g1(14,27)=(-1);
  g1(14,56)=(-params(33));
  g1(15,8)=params(1);
  g1(15,23)=(-params(1));
  g1(15,26)=(-1);
  g1(15,31)=1;
  g1(16,23)=params(1)*params(1);
  g1(16,24)=1;
  g1(16,10)=(-(1/params(2)));
  g1(16,25)=1;
  g1(16,30)=(-1);
  g1(16,32)=params(1);
  g1(17,16)=(-((1-params(12))*(-params(16))));
  g1(17,13)=(-params(12));
  g1(17,29)=1;
  g1(17,14)=(-((1-params(12))*(-params(15))));
  g1(17,30)=(-((1-params(12))*(params(14)+params(15))));
  g1(17,31)=(-((1-params(12))*(params(13)+params(16))));
  g1(17,15)=(-((1-params(12))*(-params(16))));
  g1(17,32)=(-((1-params(12))*params(16)));
  g1(17,57)=(-params(34));
  g1(18,14)=1;
  g1(18,30)=(-1);
  g1(18,33)=100*0.01/(1+y(33)/100);
  g1(19,31)=(-1);
  g1(19,34)=100*0.01/(1+y(34)/100);
  g1(20,29)=(-4);
  g1(20,35)=400*0.0025/(1+y(35)/400);
  g1(21,15)=1;
  g1(21,32)=(-1);
  g1(21,36)=100*0.01/(1+y(36)/100);
  g1(22,8)=1;
  g1(22,23)=(-1);
  g1(22,37)=100*0.01/(1+y(37)/100);
  g1(23,16)=(-1);
  g1(23,38)=100*0.01/(1+y(38)/100);
  g1(24,2)=1;
  g1(24,17)=(-1);
  g1(24,39)=100*0.01/(1+y(39)/100);
  g1(25,18)=(-4);
  g1(25,40)=400*0.0025/(1+y(40)/400);
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],25,3249);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],25,185193);
end
end
