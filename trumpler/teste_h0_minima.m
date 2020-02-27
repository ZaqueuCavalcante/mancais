function [result] = teste_h0_minima(h0, d_eixo)
    % Testa se a espessura m�nima de filme (h0) passa no crit�rio de
    % Trumpler. 
    % 
    % - - - > Par�metros de entrada:
    % h0 -> espessura m�nima de filme -[m].
    % d_eixo -> di�metro do eixo - [m].
    %
    % < - - - Par�metros de sa�da:
    % result -> 1 (passou) - 0 (reprovou).
    
    % Convers�es de [m] para [mm].
    h0 = h0*1000;
    d_eixo = d_eixo*1000;
    
    if (h0 >= 0.00508 + 1.01603*d_eixo) % N�O FAZ SENTIDO.
        result = 1;
    else
        result = 0;
    end
end