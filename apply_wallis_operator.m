function [processed_img] = apply_wallis_operator(in_img, local_mean_img, desired_mean, local_contrast_img, desired_contrast, A_max, p)
    processed_img = zeros(size(in_img));
    for x = 1:size(in_img,1)
        for y = 1:size(in_img,2)
            processed_img(x,y) = ((in_img(x,y)-local_mean_img(x,y))*A_max*desired_contrast)/(A_max*local_contrast_img(x,y)+desired_contrast)+(p*desired_mean+(1-p)*local_mean_img(x,y));
        end
    end
    
    
end