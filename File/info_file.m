% Matlab文件：二进制文件，格式化文件
% fid=fopen(FILENAME,PERMISSION)	
% [fid,msg]=fopen(FILENAME,PERMISSION)
% 默认  binary read    
% 以文本形式打开，后加t，如'wt'

% 'r'  open file for reading
% 'w'  open file for writing; discard existing contents
% 'a'  open or create file for writing; append data to end of file
% 'r+' open (do not create) file for reading and writing
% 'w+' open or create file for reading and writing; discard existing contents
% 'a+' open or create file for reading and writing; append data to end of file
% 'W'  open file for writing without automatic flushing
% 'A'  open file for appending without automatic flushing

% 文件标示fid:1标准输出，2标准错误，n临时标识
% fclose(fid)
% fid= fopen('all')
% fid= fclose('all')
