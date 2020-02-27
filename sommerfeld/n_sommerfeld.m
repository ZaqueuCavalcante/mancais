function [S] = n_sommerfeld(r, c, visc, omega_sig, P)
    % Calcula o número de Sommerfeld ou número característico do mancal.
    %
    % - - - > Parâmetros de entrada:
    % r -> raio do eixo - [m].
    % c -> folga radial - [m].
    % visc -> viscosidade absoluta do lufrificante - [Pa.s].
    % omega_sig -> velocidade angular significante - [em rev/s].
    % P -> carga por área projetada do mancal - [Pa]. 
    %
    % < - - - Parâmetros de saída:
    % S -> número de Sommerfeld - [adm].
    
    S = (r/c)^2*(visc*omega_sig/P);
end