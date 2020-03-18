function [H_gerado] = calcula_h_gerado(visc, omega_sig, l_mancal, r_eixo, c_radial)
    % Calcula a raz�o de perda de calor do mancal para as redondezas.
    %
    % - - - > Par�metros de entrada:
    % visc -> viscosidade absoluta - [Pa.s].
    % omega_sig -> velocidade angular significante - [rev/s].
    % l_mancal -> comprimento do mancal - [m].
    % r_eixo -> raio do eixo - [m].
    % c_radial -> folga radial - [m].
    %
    % < - - - Par�metros de sa�da:
    % H_perda -> raz�o de perda de calor do mancal para as redondezas - [W].
    
    H_gerado = 248*visc*omega_sig^2*l_mancal*r_eixo^3/c_radial;
end