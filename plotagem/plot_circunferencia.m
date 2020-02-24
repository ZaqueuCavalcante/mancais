function [] = plot_circunferencia(x_centro, y_centro, raio)
    % Função para plotar uma circunferência na tela, dados seu rario e as 
    % coordenadas do seu centro.
    
    theta = linspace(0, 2*pi, 100);
    
    x = x_centro + raio*cos(theta);
    y = y_centro + raio*sin(theta);
    
    hold on;
    grid on;
    
    plot(x_centro, y_centro, '*');
    plot(x, y);
    
    hold on;
end

    