function [h_CR] = calcula_h_cr(cond_ar)
    % Calcula o coeficiente global de transferência de calor.
    %
    % - - - > Parâmetros de entrada:
    % cond_ar -> condição do ar ao redor do mancal.
    %     -> 1 - para ar parado.
    %     -> 2 - para ar revolvido pelo eixo.
    %     -> 3 - para ar em movimento a 25,4 m/s.
    %
    % < - - - Parâmetros de saída:
    % h_CR -> coeficiente global de transferência de calor - [W/(m^2.°C)].
    
    switch cond_ar
        case 1
            h_CR = 11.4;
        case 2
            h_CR = 15.3;
        case 3
            h_CR = 33.5;     
        otherwise
            error('Condição do ar inválida.');
    end
end