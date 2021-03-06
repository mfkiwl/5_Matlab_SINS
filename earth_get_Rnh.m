function Rnh = earth_get_Rnh(pos)
% 计算Rmh
% Inputs:   pos = [lat;lon;h] 纬度、经度、高程，单位弧度 m
% Output:   Rmh     单位 m
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018
global G_CONST

Rnh = G_CONST.earth_Re/(1-G_CONST.earth_e^2*sin(pos(1,1))^2)^0.5 + pos(3,1);
