% Simple fonction poureviter de r�p�ter utiliser une longue commande avec
% la fonction find, j'utilise directement cette fonction pour savoir si un
% point pt appartient ou non � la liste Pts et l'indice de ce point dans
% cette liste.
function i=findpoint(pt,Pts)
i=find(Pts(:,1)==pt(1,1) & Pts(:,2)==pt(1,2) & Pts(:,3) ==pt(1,3));
%O=size(i,1);
end