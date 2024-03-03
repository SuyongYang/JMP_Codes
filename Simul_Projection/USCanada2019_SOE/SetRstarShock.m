% set rstar shocks (US r shocks)
function SetRstarShock(r,r_ini)


for iii = 1:30
                dd =  r(iii) ;
                eval(['Rh_' num2str(iii) '= dd;'])
end
Rstar_SS = 1+ r_ini;

save RstarShocks Rstar_SS Rh_1	Rh_2	Rh_3	Rh_4	Rh_5	Rh_6	Rh_7	Rh_8	Rh_9	Rh_10	Rh_11	Rh_12	Rh_13	Rh_14	Rh_15	Rh_16	Rh_17	Rh_18	Rh_19	Rh_20	Rh_21	Rh_22	Rh_23	Rh_24	Rh_25	Rh_26	Rh_27	Rh_28	Rh_29	Rh_30	