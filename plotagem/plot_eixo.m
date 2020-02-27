function [] = plot_eixo(r_eixo, excent, ang_excent)
    % Plota o eixo na tela.
    % O parâmetro ang_excent é o ângulo, em graus, que a linha da 
    % excêntricidade faz com o eixo x positivo.
    
    x = excent*cos(ang_excent*pi/180);
    y = excent*sin(ang_excent*pi/180);
    
    plot_circunferencia(x, y, r_eixo);
    plot_linha(0, 0, x, y);
end