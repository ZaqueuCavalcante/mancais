function [H_perda] = calcula_h_perda(h_CR, A_lat_mancal, alpha, T_f, T_infi)
    % Calcula a razão de perda de calor do mancal para as redondezas.
    %
    % - - - > Parâmetros de entrada:
    % h_CR -> coeficiente global de transferência de calor - [W/(m^2.°C)].
    % omega_sig -> área lateral do mancal - [m^2].
    % alpha -> constante que relaciona as diferenças de temperatura do mancal - [].
    % T_f -> temperatura da película lubrificante - [°C].
    % T_infi -> temperatura ambiente - [°C]. 
    %
    % < - - - Parâmetros de saída:
    % H_perda -> razão de perda de calor do mancal para as redondezas - [W].
    
    H_perda = h_CR*A_lat_mancal*(T_f-T_infi)/(1+alpha);
end