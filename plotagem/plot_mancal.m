function [] = plot_mancal(r_mancal)
    % Fun��o para plotar a vista lateral do mancal na tela.
    
    plot_circunferencia(0, 0, r_mancal);
    plot_circunferencia(0, 0, r_mancal*1.2);

end