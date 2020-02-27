function [S] = n_sommerfeld(r, c, visc, omega_sig, P)
    % Calcula o n�mero de Sommerfeld ou n�mero caracter�stico do mancal.
    %
    % - - - > Par�metros de entrada:
    % r -> raio do eixo - [m].
    % c -> folga radial - [m].
    % visc -> viscosidade absoluta do lufrificante - [Pa.s].
    % omega_sig -> velocidade angular significante - [em rev/s].
    % P -> carga por �rea projetada do mancal - [Pa]. 
    %
    % < - - - Par�metros de sa�da:
    % S -> n�mero de Sommerfeld - [adm].
    
    S = (r/c)^2*(visc*omega_sig/P);
end