% Exemplo 12-6 - Mancal com lubrifica��o for�ada.

% Dados da quest�o:

grau_oleo = 20;    % Grau do lubrificante - �leo SAE.
pressao_medidor = 207E6;    % Press�o � qual o lubrificante � fornecido.
N = 3000 / 60;    % Velocidade angular do eixo - [rev/s].

W = 4E3;    % Carga radial permanente - [N].
d_eixo = 44.45E-3;    % Di�metro do eixo - [m].
r_eixo = d_eixo/2;    % Raio do eixo - [m].
l_linha_mancal = (1/2)*d_eixo;    % Raz�o l_linha/d = 1/2.
c_radial = 0.040E-3;    % Folga radial - [m].

P = W/(l_linha_mancal*d_eixo);    % Carga radial por unidade de �rea projetada - [Pa].

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

% Processo iterativo para determina��o da temperatura da pel�cula lubrificante.

h_CR = calcula_h_cr(cond_ar);    % Coeficiente global de transfer�ncia de calor - [W/(m^2.�C)].
precisao = 0.1;    % Diferen�a aceit�vel entre os calores gerado e perdido - [W].
delta_H = 2*precisao;
delta_T = 0.1;

% Chute inicial da temperatura da pel�cula, como 110% da temperatura ambiente.
T_f = 1.1*T_infi;    % Temperatura da pel�cula lubrificante - [�C].


while (delta_H > precisao)

    visc = visc_SAE(grau_oleo, T_f);
    S = n_sommerfeld(r_eixo, c_radial, visc, N, P);
    H_gerado = calcula_h_gerado(visc, N, l_linha_mancal, r_eixo, c_radial);    % Calor gerado - [W].
    H_perda = calcula_h_perda(h_CR, A_lat_mancal, alpha, T_f, T_infi);    % Calor perdido - [W].
    
    delta_H = abs(H_gerado - H_perda);
    T_f = T_f + delta_T;
    
    clc;
    fprintf('T_F = %f [�C] \n', T_f);
    fprintf('H_gerado = %f  [w] \n', H_gerado);
    fprintf('H_perda = %f [w] \n', H_perda);
    %pause(0.005);    
end
        
% C�lculo das demais temperaturas.

l_sobre_d = 1;
DELTA_T_sobre_P = calcula_delta_t_p(l_sobre_d, S);

DELTA_F = DELTA_T_sobre_P*P*10^-6/0.12;

T_ent = T_f - DELTA_F/2;

T_max = T_ent + DELTA_F;

T_b = (T_f + alpha*T_infi)/(1+alpha);    % Temperatura da superf�cie da caixa de mancal.




