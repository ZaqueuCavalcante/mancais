function [visc] = visc_SAE(grau_oleo, temp_C)
    % Retorna a viscosidade de óleos SAE 10 a 60.
    % - - - > Parâmetros de entrada:
    % grau_oleo -> 10, 20, 30, 40, 50 ou 60.
    % temp_C -> temperatura do óleo - [°C].
    % A viscosidade sai em Pa.s.
    
    temp_F = 1.8*temp_C + 32;   % Conversão de °C para °F.
    
    switch grau_oleo
        case 10
            visc_0 = 0.0158E-6;
            b = 1157.5;
        case 20
            visc_0 = 0.0136E-6;
            b = 1271.6;
        case 30
            visc_0 = 0.0141E-6;
            b = 1360.0;
        case 40
            visc_0 = 0.0121E-6;
            b = 1474.4;
        case 50
            visc_0 = 0.0170E-6;
            b = 1509.6;
        case 60
            visc_0 = 0.0187E-6;
            b = 1564.0;
        otherwise
            error('Grau SAE inválido. Valores possíveis: 10, 20, 30, 40, 50 ou 60.')
    end
    visc = 6894.757*visc_0*exp(b/(temp_F+95));
end