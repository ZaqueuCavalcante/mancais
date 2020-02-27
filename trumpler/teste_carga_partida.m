function [result] = teste_carga_partida(W_partida, l_mancal, d_eixo)
    % Testa se a carga de partida sobre a área projetada atende o critério
    % de projeto de Trumpler.
    % 
    % - - - > Parâmetros de entrada:
    % W_partida -> carga de partida -[N].
    % l_mancal -> comprimento do mancal - [m].
    % d_eixo -> diâmetro do eixo - [m].
    %
    % < - - - Parâmetros de saída:
    % result -> 1 (passou) - 0 (reprovou).
    
    if (W_partida/(l_mancal*d_eixo) <= 2068E3)
        result = 1;
    else
        result = 0;
    end
end