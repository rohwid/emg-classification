function res = slope(ymax, ymin, xmax, xmin)
    m_xmax = mean(xmax);
    m_xmin = mean(xmin);
    
    res = abs((ymax-ymin)/(m_xmax-m_xmin));
end

