function path_result_USER = runCST(path_CST, Wgap, Wline, L)

listing = dir();

Wgap = round(Wgap, 3);
Wline = round(Wline, 3);
L = round(L, 3);

path_bas = sprintf('%s\\file.bas', listing(1).folder);
path_result_CST  = sprintf('%s\\CST\\unitcell\\Result\\DS\\TOUCHSTONE files', listing(1).folder);
path_result_USER = sprintf('%s\\Results\\Wgap=%.3f_Wline=%.3f_L=%.3f', listing(1).folder, Wgap, Wline, L);
path_project = sprintf('%s\\CST\\unitcell.cst', listing(1).folder);

if isfolder(path_result_USER) == 0

    if isfolder(path_result_CST)
        rmdir(path_result_CST, 's')
    end
    mkdir(path_result_USER)

    fileID = fopen('file.bas','w');
    fprintf(fileID,'Option Explicit\n');
    fprintf(fileID,'Sub Main ()\n');
    fprintf(fileID,'OpenFile ("%s")\n', path_project);
    fprintf(fileID,'DeleteResults\n');
    fprintf(fileID,'StoreDoubleParameter ("Wgap", %.3f)\n',Wgap);
    fprintf(fileID,'StoreDoubleParameter ("Wline", %.3f)\n',Wline);
    fprintf(fileID,'StoreDoubleParameter ("L", %.3f)\n',L);
    fprintf(fileID,'Rebuild\n');
    fprintf(fileID,'SimulationTask.Name("Sweep1")\n');
    fprintf(fileID,'SimulationTask.Update\n');
    
    fprintf(fileID,'End Sub\n');
    fclose(fileID);
    
    cmd = sprintf("%s%s%s -m %s", '"', path_CST, '"', path_bas);
    disp(cmd);
    system(cmd);

    copyfile(path_result_CST, path_result_USER)

end

end