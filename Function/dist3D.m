function d=dist3D(x1,x2,y1,y2,z1,z2)
% calculate the distance between two points
% x1,y1,,z1,x2,y2,z2 are input values
% d is the return value
% nargin nargout narchk error warning
error(nargchk(4,6,nargin));
if nargin==4
    d=sqrt((x1-x2)^2+(y1-y2)^2);
elseif nargin==6
    d=sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2);
else
    z2=0;
    warning('%s','Only five input arguments');
    d=sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2);
end