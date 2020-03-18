function [h_CR] = calcula_h_cr(cond_ar)
    % Calcula o coeficiente global de transfer�ncia de calor.
    %
    % - - - > Par�metros de entrada:
    % cond_ar -> condi��o do ar ao redor do mancal.
    %     -> 1 - para ar parado.
    %     -> 2 - para ar revolvido pelo eixo.
    %     -> 3 - para ar em movimento a 25,4 m/s.
    %
    % < - - - Par�metros de sa�da:
    % h_CR -> coeficiente global de transfer�ncia de calor - [W/(m^2.�C)].
    
    switch cond_ar
        case 1
            h_CR = 11.4;
        case 2
            h_CR = 15.3;
        case 3
            h_CR = 33.5;     
        otherwise
            error('Condi��o do ar inv�lida.');
    end
end