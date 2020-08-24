function [filtered_img] = median_filter(in_img, r)
    filtered_img = zeros(size(in_img));
    in_img = padarray(in_img,[r r],'replicate');
    for i = 1:size(filtered_img,1)
        for j = 1:size(filtered_img,2)
            filtered_img(i,j) = median(in_img(i:i+2*r,j:j+2*r),'all');
        end
    end
    
    
    
    
    
end