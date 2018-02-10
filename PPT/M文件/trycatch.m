function d_in = trycatch(filename)  %trycatch %20121201 KJ

[path name ext] = fileparts(filename);  % Get file information
try
   fid = imread(filename); 
   imshow(fid); 
   
catch exception
   % Did the read fail because the file could not be found?
   disp('Can not find the file');
end
