function data = fitur(dataInp)
    %% statistical feature
    
    peak_data1 = max(dataInp);
    bott_data1 = min(dataInp);
    ploc_data1 = find(peak_data1 == dataInp);
    bloc_data1 = find(bott_data1 == dataInp);
    time_data1 = size(dataInp,1);
    mv_data1 = sum(dataInp,1)/time_data1;
    sl_data1 = slope(peak_data1, bott_data1, ploc_data1, bloc_data1);
    
    %% signal feature
    
    % zero mean crossing count
    [zmcc_plus_data1, zmcc_min_data1] = zc_count(mv_data1, dataInp);
    
    % zero mean crossing value & zero mean crossing location (time)
    [zmcv_plus_data1, zmcv_min_data1, zmcl_plus_data1, zmcl_min_data1] = zc_valloc(mv_data1, dataInp);

    data =[peak_data1 bott_data1 mean(ploc_data1) mean(bloc_data1) time_data1 mv_data1 sl_data1 ... 
        zmcc_plus_data1 zmcc_min_data1 zmcv_plus_data1 zmcv_min_data1 zmcl_plus_data1 zmcl_min_data1]; 
end