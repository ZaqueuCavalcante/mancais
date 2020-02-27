function [result] = teste_carga_partida(W_partida, l_mancal, d_eixo)
    % Testa se a carga de partida sobre a �rea projetada atende o crit�rio
    % de projeto de Trumpler.
    % 
    % - - - > Par�metros de entrada:
    % W_partida -> carga de partida -[N].
    % l_mancal -> comprimento do mancal - [m].
    % d_eixo -> di�metro do eixo - [m].
    %
    % < - - - Par�metros de sa�da:
    % result -> 1 (passou) - 0 (reprovou).
    
    if (W_partida/(l_mancal*d_eixo) <= 2068E3)
        result = 1;
    else
        result = 0;
    end
end