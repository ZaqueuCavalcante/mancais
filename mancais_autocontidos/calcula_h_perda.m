function [H_perda] = calcula_h_perda(h_CR, A_lat_mancal, alpha, T_f, T_infi)
    % Calcula a raz�o de perda de calor do mancal para as redondezas.
    %
    % - - - > Par�metros de entrada:
    % h_CR -> coeficiente global de transfer�ncia de calor - [W/(m^2.�C)].
    % omega_sig -> �rea lateral do mancal - [m^2].
    % alpha -> constante que relaciona as diferen�as de temperatura do mancal - [].
    % T_f -> temperatura da pel�cula lubrificante - [�C].
    % T_infi -> temperatura ambiente - [�C]. 
    %
    % < - - - Par�metros de sa�da:
    % H_perda -> raz�o de perda de calor do mancal para as redondezas - [W].
    
    H_perda = h_CR*A_lat_mancal*(T_f-T_infi)/(1+alpha);
end