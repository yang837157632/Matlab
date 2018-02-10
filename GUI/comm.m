function comm(hedit,hpopup,hlist)
com=get(hedit,'String');
n1=get(hpopup,'Value');
n2=get(hlist,'Value');
if ~isempty(com)
    eval(com');
    chpop={'jet','hsv','hot','cool','spring','summer','autumn','winter','gray','bone','copper','pink','lines'};
    chlist={'grid on','grid off','box on','box off'};
    colormap(eval(chpop{n1}));
    eval(chlist{n2});
end