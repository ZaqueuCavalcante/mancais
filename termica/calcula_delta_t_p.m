function [delta_T_P] = calcula_delta_t_p(l_sobre_d, S)
    % Calcula o termo 0.120*delta_T/P, da figura 12-24, Shigley.
    % 
    % - - - > Parâmetros de entrada:
    % l_sobre_d -> razão entre o comprimento do mancal e o raio do eixo - [].
    % S -> número de Sommerfeld.
    % 
    % < - - - Parâmetros de saída:
    % delta_T_P -> ordenada 0.120*delta_T/P do gráfico da figura.
    
    switch l_sobre_d
        case 1/4
            delta_T_P = 0.933828 + 6.437512*S + 0.0011048*S.^2;
        case 1/2
            delta_T_P = 0.394552 + 6.392527*S + 0.036013*S.^2;
        case 1
            delta_T_P = 0.349109 + 6.00940*S + 0.047467*S.^2;
    end
 end
