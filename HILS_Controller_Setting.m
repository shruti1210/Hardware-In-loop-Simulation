%Controller
clear
close all
clc

%---------- system parameters ----------
%===== Motor =====
%electorical property
R = 5.7;            %Resistanse[��]
L = 0.2;            %Inductance[H]
K_e = 7.16e-2;      %EMF[V/(rad/s)]
%mechanical property
J_M = 0.11e-3;      %Inertia moment[kg?Em^2]
K_t = 7.2e-2;       %Torque coefficient[N?Em/A]

%===== Disk =====
J_I = 1.3e-3;       %Inertia moment[kg?Em^2]
D = 6.0e-05;        %Damping coefficient [N?Em/(rad/s)]

%===== Controller =====
%Set value
SV = 1000;      %rotation number (rpm)

%PID gains
kc = 0.0273;
Ti = 18.2;
Td = 0;

%===== Simulink =====
%Endtime[s]
Endtime = 70;
%Simulink�N��
filename = 'HILController_sim';
open(filename)
set_param(filename, 'SimulationCommand', 'start') 