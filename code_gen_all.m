path_list = {...
    '.\CanIn_PD', ...
    '.\CanIn_PT1', ...
    '.\CanIn_PT2', ...
    '.\CanOut_PD', ...
    '.\CanOut_PT', ...
    '.\HwIn', ...
    '.\HwOut', ...
    '.\LinIn_LIN6', ...
    '.\LinIn_LIN7', ...
    '.\LinOut', ...
    '.\VCUOverall', ...
    };
% cellfun(@code_gen_composition, path_list);
code_gen_composition(path_list{7})

function code_gen_composition(compo_path)
    tmp_list = dir([compo_path, '\a03_Model']);
    model_list = tmp_list(arrayfun(@(x) (x.isdir && x.name(1) ~= '.'), tmp_list));
    arrayfun(@code_gen_swc, model_list);
end

function code_gen_swc(model_info)
    current_path = pwd;
    model_path = [model_info.folder, '\', model_info.name];
    cd(model_path);
    sl_model = dir('*.slx');
    swc_model = strrep(sl_model(1).name, '.slx', '');
    code_dir = '..\..\a04_Source';
    a2l_dir = '..\..\a05_A2L';
    sharedutils_dir = '.\slprj\autosar\_sharedutils\';
    swc_model_code_dir = ['.\', swc_model, '_autosar_rtw\'];
    
    load_scropt = [swc_model, '_LoadData.m'];
    evalin('base', ['run(''', load_scropt, ''');']);

    sys = load_system(swc_model);
    Simulink.BlockDiagram.loadActiveConfigSet(sys, 'sl_config_autosar');
    save_system(sys);
    if exist('.\slprj','dir')
        rmdir('.\slprj','s');
    end
    if exist(['.\', swc_model, '_autosar_rtw'],'dir')
        rmdir(['.\', swc_model, '_autosar_rtw'],'s');
    end
    disp(['############ ', swc_model, ' generate code ... ########']);
    try
        rtwbuild(sys);
    catch
        
    end
    disp(['############ ', swc_model, ' generate code finish ... ########']);
    close_system(sys);

    try
        copyfile([swc_model_code_dir, '*.c'], code_dir);
        copyfile([swc_model_code_dir, '*.h'], code_dir);
        copyfile([swc_model_code_dir, '*.a2l'], a2l_dir);
    catch
        
    end
    
    copyfile([sharedutils_dir, '*.h'], code_dir);
    try
        copyfile([sharedutils_dir, '*.c'], code_dir);
    catch
        
    end
    
    cd(current_path);
    clear;
end
