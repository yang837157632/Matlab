% EXIST('A') 
% 0 if A does not exist
% 1 if A is a variable in the workspace
% 2 if A is an M-file on MATLAB's search path.  It also returns 2 
  % when A is the full pathname to a file or when A is the name of an
  % ordinary file on MATLAB's search path
% 3 if A is a MEX-file on MATLAB's search path
% 4 if A is a MDL-file on MATLAB's search path
% 5 if A is a built-in MATLAB function
% 6 if A is a P-file on MATLAB's search path
% 7 if A is a directory
% 8 if A is a class (EXIST returns 0 for Java classes if you
  % start MATLAB with the -nojvm option.)
  
% EXIST('A') or EXIST('A.EXT') returns 2 if a file named 'A' or 'A.EXT'
  % and the extension isn't a P or MEX function extension.
 
% EXIST('A','var') checks only for variables.
% EXIST('A','builtin') checks only for built-in functions.
% EXIST('A','file') checks for files or directories.
% EXIST('A','dir') checks only for directories.
% EXIST('A','class') checks only for classes.

exist('a_eg')
exist('a_eg.m')
exist('a_eg','file')