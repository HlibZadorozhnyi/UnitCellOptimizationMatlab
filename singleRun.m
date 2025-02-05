function cost = singleRun(x)
    optim = optimization;

    optim.fmin = 10.7;
    optim.fmax = 11.3;
    optim.f0 = 11;
    optim.phase_span_D = 240;
    optim.ampl_ave_D = 0.7;
    optim.ampl_delta_D = 0.3;
    % optim.ampl_delta_D = (1-optim.ampl_ave_D)*2;
    optim.a1 = 0.1;
    optim.a2 = 0.1;
    optim.cost_thr = 0.01;
    optim.V=0:2:20;
    optim.N_V = length(optim.V);

    Wgap = x(1,1);
    Wline = x(1,2);
    L = 10;

    Y1 = -1*Wline+1.4;
    Y2 = -0.5*Wline+4.5;
    if (Wgap >= Y1) && (Wgap >= 0.4) && (Wline >= 0.3) && (Wgap <= Y2)
        path_CST = 'C:\Program Files (x86)\CST Studio Suite 2024\AMD64\CST DESIGN ENVIRONMENT_AMD64.exe';
        path_result = runCST(path_CST, Wgap, Wline, L);
        optim = optim.processSparam(path_result);
        optim = optim.calculateCost();
        cost = optim.cost;
    else
        cost = 100000;
    end
    

    


    % figure('Name',sprintf('Wgap=%.3f_Wline=%.3f_L=%.3f', Wgap, Wline, L));
    %     subplot(3,2,1)
    %     plot(optim.freq, optim.phase_deg_u)
    %     title('Phase-to-frequency versus voltage')
    %     ylabel('Phase [deg]')
    %     xlabel('Frequency [GHz]')
    %     grid on
    % 
    %     subplot(3,2,3)
    %     plot(optim.freq, optim.amplitude)
    %     ylim([0 1])
    %     title('Amplitude-to-frequency versus voltage')
    %     ylabel('Amplitude [1]')
    %     xlabel('Frequency [GHz]')
    %     grid on
    % 
    %     subplot(3,2,5)
    %     hold on
    %     plot(optim.freq, optim.phase_span)
    %     yline(optim.phase_span_D, '--r', {sprintf('Desired = %.2f', optim.phase_span_D)})
    %     xline(optim.fmin, '--b', {sprintf('fmin = %.2f', optim.fmin)})
    %     xline(optim.fmax, '--b', {sprintf('fmax = %.2f', optim.fmax)})
    %     xline(optim.f0, '--b', {sprintf('f0 = %.2f', optim.f0)})
    %     hold off
    %     ylim([0 360])
    %     title('Phase span')
    %     ylabel('Phase [deg]')
    %     xlabel('Frequency [GHz]')
    %     grid on
    % 
    %     subplot(3,2,2)
    %     plot(optim.V, optim.phase_deg_f0)
    %     ylim([0 360])
    %     title('Phase-to-voltage at the f0')
    %     ylabel('Phase [deg]')
    %     xlabel('Voltage [V]')
    %     grid on
    % 
    %     subplot(3,2,4)
    %     hold on
    %     plot(optim.V, optim.amplitude_f0)
    %     yline(optim.ampl_ave, '--r', {sprintf('Average = %.2f, MaxToMin = %.2f', optim.ampl_ave, optim.ampl_delta)})
    %     hold off
    %     ylim([0 1])
    %     title('Amplitude-to-voltage at the f0')
    %     ylabel('Amplitude [1]')
    %     xlabel('Voltage [V]')
    %     grid on

        
end