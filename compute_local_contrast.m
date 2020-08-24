function [local_contrast_img] = compute_local_contrast(in_img, local_mean_img, r)
    local_contrast_img = zeros(size(in_img));
    in_img = padarray(in_img,[r r],'replicate');
    local_mean_img = padarray(local_mean_img,[r r],'replicate');
    N = (2*r+1)^2; 
    for i=1:size(local_contrast_img,1)
        for j= 1:size(local_contrast_img,2)
            current_window = (in_img(i:i+2*r,j:j+2*r)-local_mean_img(i:i+2*r,j:j+2*r)).^2;
            local_contrast_img(i,j) = sqrt(sum(current_window,'all'))/N;
        end
    end
    
    
end