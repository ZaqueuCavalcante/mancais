function [result] = teste_h0_minima(h0, d_eixo)
    % Testa se a espessura mínima de filme (h0) passa no critério de
    % Trumpler. 
    % 
    % - - - > Parâmetros de entrada:
    % h0 -> espessura mínima de filme -[m].
    % d_eixo -> diâmetro do eixo - [m].
    %
    % < - - - Parâmetros de saída:
    % result -> 1 (passou) - 0 (reprovou).
    
    % Conversões de [m] para [mm].
    h0 = h0*1000;
    d_eixo = d_eixo*1000;
    
    if (h0 >= 0.00508 + 1.01603*d_eixo) % NÃO FAZ SENTIDO.
        result = 1;
    else
        result = 0;
    end
end