function [residual, g1, g2] = dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, T_flag)
% function [residual, g1, g2] = dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = Pension_Copy_US_2Country_Same_Demo.dynamic_g2_tt(T, y, x, params, steady_state, it_);
    end
    [residual, g1] = Pension_Copy_US_2Country_Same_Demo.dynamic_resid_g1(T, y, x, params, steady_state, it_, false);
    g2       = Pension_Copy_US_2Country_Same_Demo.dynamic_g2(T, y, x, params, steady_state, it_, false);

end
