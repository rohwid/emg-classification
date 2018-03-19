function [con_plus, con_minus] = zc_count(mean,data)
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
end