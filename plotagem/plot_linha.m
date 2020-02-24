function [] = plot_linha(x_1, y_1, x_2, y_2)
    % Função para plotar uma linha na tela, que liga dois pontos 
    % P1 = (x_1,y_1) e P2 = (x_2,y_2).
    
    x = linspace(x_1, x_2, 100);
    
    % y = m.x + b   Equação da reta entre os dois pontos.
    
    m = (y_2-y_1)/(x_2-x_1);
    b = y_2 - m*x_2;
    
    y = m.*x + b;
    
    hold on;
    grid on;
    
    plot(x_1, y_1, '*');
    plot(x_2, y_2, '*');
    plot(x, y);
    
    hold on;
end