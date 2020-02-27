function [omega_sig] = omega_sig(omega_eixo, omega_mancal, omega_carga)
    % Calcula a velocidade angular significante.
    %
    % - - - > Parâmetros de entrada:
    % omega_eixo -> velocidade angular do eixo - [rev/s].
    % omega_mancal -> velocidade angular do mancal - [rev/s].
    % omega_carga -> velocidade angular do vetor de carga - [rev/s].
    %
    % < - - - Parâmetros de saída:
    % omega_sig -> velocidade angular significante - [rev/s].
    
    omega_sig = abs(omega_eixo + omega_mancal - 2*omega_carga);
end