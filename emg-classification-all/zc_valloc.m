function [val_plus, val_minus, loc_plus, loc_minus] = zc_valloc(mean,data)
    size_data = size(data,1);
    
    con_plus = 0;
    con_minus = 0;
    
    if data(1,1) >= mean
        flag = 1;
    else
        flag = 0;
    end
    
    for row = 1:size_data
        if data(row,1) >= mean
            if flag == 0
                con_plus = con_plus + 1;
                flag = 1;
            end
        else
            if flag == 1
                con_minus = con_minus + 1;
                flag = 0; 
            end
        end
    end
    
    
    if data(1,1) >= mean
        flag = 1;
    else
        flag = 0;
    end
    
    val_plus = zeros(con_plus,1);
    val_minus = zeros(con_minus,1);
    loc_plus = zeros(con_plus,1);
    loc_minus = zeros(con_minus,1);
    
    for row = 1:size_data
        if data(row,1) >= mean
            if flag == 0
                val_plus = data(row,1);
                loc_plus = row;
                flag = 1;
            end
        else
            if flag == 1
                val_minus = data(row,1);
                loc_minus = row;
                flag = 0; 
            end
        end
    end
end