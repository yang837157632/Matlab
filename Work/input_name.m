function input_name(a,b)
% inputname
% 只有当a,b以参数形式表示时，才显示
fprintf('My first input is "%s".\n' ,inputname(1));
fprintf('My second input is "%s".\n',inputname(2));