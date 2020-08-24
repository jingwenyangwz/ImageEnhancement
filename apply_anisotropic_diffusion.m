function [out_img] = apply_anisotropic_diffusion(in_img, iternum, K, lambda, which_g)

    if(which_g == 1)
        g = @g1;
    else
        g = @g2;
    end
    
    for i = 1:iternum
        [nabla_N,nabla_S,nabla_E,nabla_W] = create_nearest_neighbor_difference_arrays(in_img); 
        c_N = g(abs(nabla_N),K);        
        c_S = g(abs(nabla_S),K);
        c_E = g(abs(nabla_E),K);
        c_W = g(abs(nabla_W),K);
        
        T = c_N.*nabla_N+ + c_S.*nabla_S + c_E.*nabla_E + c_W.*nabla_W;
        in_img = in_img + lambda*T;
    end
    
    out_img = in_img;

end