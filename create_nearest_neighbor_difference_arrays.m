function [nabla_N, nabla_S, nabla_E, nabla_W] = create_nearest_neighbor_difference_arrays(I)
    padded_I = padarray(I,[1 1],'replicate');
    [row,col] = size(padded_I);
    I_N = padded_I(1:row-2,2:col-1);
    I_S = padded_I(3:row,2:col-1);
    I_W = padded_I(2:row-1,1:col-2);
    I_E = padded_I(2:row-1,3:col);
  
    nabla_N = I_N-I;
    nabla_S = I_S-I;
    nabla_W = I_W-I;
    nabla_E = I_E-I;
    
end