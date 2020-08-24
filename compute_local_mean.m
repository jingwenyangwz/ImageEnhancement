function [local_mean_img] = compute_local_mean(in_img, r)
    local_mean_img = zeros(size(in_img));
    in_img = padarray(in_img,[r r],'replicate');
    for i=1:size(local_mean_img,1)
        for j= 1:size(local_mean_img,2)
            local_mean_img(i,j) = mean(in_img(i:i+2*r,j:j+2*r),'all');
        end
    end
end