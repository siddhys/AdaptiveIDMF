
% Model Initialization
% Start Location [X Z Y]
% dronestartlocation=[-1.5 0 0];
dronestartlocation=[-1.5 0 4];

% Final Location [X Z Y]
helipadLocation = [14 0.6 5];

% Linear Velocity [Vx Vz Vy]
linearVelocity = [5 0.05 1]; 

% Angular Velocity during Optical Flow navigation
% represented as [pitch yaw roll]
angularVelocity = [0 0 -0.01]; 

% X-coordinate to switch from Optical flow controller to PID Controller
switchingXLimit = 12.0;

% Angular Velocity during landing
% angularVelocityforLanding = [0 0 0.01];
angularVelocityforLanding = [0 0 0];

% Linear Velocity for landing [Vx Vz Vy]
linearVelocityforHover = [0.65 0.05 0.3]; 

% Hover Height before landing
finalHoverHeight = 2.5;

% Threshold distance to execute the PID controller.
delta = 0.005;

Dstar = -0.5;

resetparam = single([]);

% angularVelocityforWind = [0 0 0.01];
windAVelocity = [0 0.1 0.1];

% Linear Velocity for landing [Vx Vz Vy]
windLVelocity = [0.1 0 0.3]; 





