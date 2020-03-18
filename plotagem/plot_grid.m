function [] = plot_grid(x, y, eixo_x, eixo_y, titulo)
    % Plota o gráfico y VS x, com os nomes dos eixos e o título.
    % 
    % - - - > Entradas:
    % x -> vetor com os dados do eixo x.
    % y -> vetor com os dados do eixo y.
    % eixo_x -> string com a label do eixo x.
    % eixo_y -> string com a label do eixo y.
    % titulo -> titulo do gráfico.
    %
    % < - - - Saídas:
    % plot do gráfico.

    p = plot(x, y);
    p.LineWidth = 2;
    grid on;
    xlabel(eixo_x);
    ylabel(eixo_y);
    title(titulo);    
end