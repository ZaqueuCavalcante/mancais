% Exemplo 12-5 - Mancal de bloco de almofadas.

% Dados da questão:

N = 900 / 60;    % Velocidade angular do eixo - [rev/s].
cond_ar = 2;    % Ar agitado por eixo.
T_infi = 21;    % Temperatura do ambiente - [°C].
alpha = 1;    % Constante que relaciona as diferenças de temperatura do mancal - [].
A_lat_mancal = 25800E-6;    % Área lateral do mancal - [m^2].

grau_oleo = 20;    % Grau do lubrificante - óleo SAE.

W = 450;    % Carga radial gravitacional - [N].
r_eixo = 25E-3;    % Raio do eixo - [m].
d_eixo = 2*r_eixo;    % Diâmetro do eixo - [m].
l_mancal = 1*d_eixo;    % Razão l/d unitária.
c_radial = 0.025E-3;    % Folga radial - [m].

P = W/(l_mancal*d_eixo);    % Carga radial por unidade de área projetada - [Pa].

% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

% Processo iterativo para determinação da temperatura da película lubrificante.

h_CR = calcula_h_cr(cond_ar);    % Coeficiente global de transferência de calor - [W/(m^2.°C)].
precisao = 0.1;    % Diferença aceitável entre os calores gerado e perdido - [W].
delta_H = 2*precisao;
delta_T = 0.1;

% Chute inicial da temperatura da película, como 110% da temperatura ambiente.
T_f = 1.1*T_infi;    % Temperatura da película lubrificante - [°C].


while (delta_H > precisao)

    visc = visc_SAE(grau_oleo, T_f);
    S = n_sommerfeld(r_eixo, c_radial, visc, N, P);
    H_gerado = calcula_h_gerado(visc, N, l_mancal, r_eixo, c_radial);    % Calor gerado - [W].
    H_perda = calcula_h_perda(h_CR, A_lat_mancal, alpha, T_f, T_infi);    % Calor perdido - [W].
    
    delta_H = abs(H_gerado - H_perda);
    T_f = T_f + delta_T;
    
    clc;
    fprintf('T_F = %f [°C] \n', T_f);
    fprintf('H_gerado = %f  [w] \n', H_gerado);
    fprintf('H_perda = %f [w] \n', H_perda);
    %pause(0.005);    
end
        
% Cálculo das demais temperaturas.

l_sobre_d = 1;
DELTA_T_sobre_P = calcula_delta_t_p(l_sobre_d, S);

DELTA_F = DELTA_T_sobre_P*P*10^-6/0.12;

T_ent = T_f - DELTA_F/2;

T_max = T_ent + DELTA_F;

T_b = (T_f + alpha*T_infi)/(1+alpha);    % Temperatura da superfície da caixa de mancal.




