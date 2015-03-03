function df_dx = rigidBodyDynamicsDerivatives(v_Bx,v_By,v_Bz,omega_Bx,omega_By,omega_Bz,f_B_ox,f_B_oy,f_B_oz,mu_B_ox,mu_B_oy,mu_B_oz,f_B_cx,f_B_cy,f_B_cz,mu_B_cx,mu_B_cy,mu_B_cz,phi1,phi2,phi3,I_Bxx,I_Bxy,I_Bxz,I_Byy,I_Byz,I_Bzz,m,g)
%RIGIDBODYDYNAMICSDERIVATIVES
%    DF_DX = RIGIDBODYDYNAMICSDERIVATIVES(V_BX,V_BY,V_BZ,OMEGA_BX,OMEGA_BY,OMEGA_BZ,F_B_OX,F_B_OY,F_B_OZ,MU_B_OX,MU_B_OY,MU_B_OZ,F_B_CX,F_B_CY,F_B_CZ,MU_B_CX,MU_B_CY,MU_B_CZ,PHI1,PHI2,PHI3,I_BXX,I_BXY,I_BXZ,I_BYY,I_BYZ,I_BZZ,M,G)

%    This function was generated by the Symbolic Math Toolbox version 5.8.
%    03-Mar-2015 09:45:43

t2 = 1.0./m;
t3 = sin(phi2);
t4 = cos(phi2);
t5 = I_Bxy.^2;
t6 = I_Bxz.^2;
t7 = I_Byz.^2;
t8 = I_Bxx.*t7;
t9 = I_Byy.*t6;
t10 = I_Bzz.*t5;
t15 = I_Bxx.*I_Byy.*I_Bzz;
t16 = I_Bxy.*I_Bxz.*I_Byz.*2.0;
t11 = t8+t9+t10-t15-t16;
t12 = 1.0./t11;
t13 = I_Byy.^2;
t14 = I_Bzz.^2;
t17 = t7-I_Byy.*I_Bzz;
t18 = t12.*t17;
t19 = I_Bxy.*I_Bzz;
t27 = I_Bxz.*I_Byz;
t20 = t19-t27;
t21 = t12.*t20;
t22 = I_Bxy.*I_Byz;
t45 = I_Bxz.*I_Byy;
t23 = t22-t45;
t24 = I_Bxx.^2;
t25 = I_Bxy.*omega_Bz.*t14;
t26 = I_Bxx.*I_Bxz.*I_Byz.*omega_Bz;
t28 = t6-I_Bxx.*I_Bzz;
t29 = t12.*t28;
t30 = I_Bxx.*I_Byz;
t46 = I_Bxy.*I_Bxz;
t31 = t30-t46;
t32 = t12.*t31;
t33 = I_Bxz.*omega_By.*t5.*2.0;
t34 = I_Byz.*omega_Bx.*t5.*2.0;
t35 = I_Bxy.*omega_Bz.*t6.*2.0;
t36 = I_Bxy.*omega_Bz.*t7.*2.0;
t37 = I_Bxx.*I_Bxy.*I_Bxz.*omega_Bx;
t38 = I_Bxx.*I_Bxz.*I_Byy.*omega_By;
t39 = I_Bxx.*I_Byy.*I_Byz.*omega_Bx;
t40 = I_Bxx.*I_Byz.*I_Bzz.*omega_Bx;
t41 = I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx;
t42 = I_Bxy.*I_Byy.*I_Byz.*omega_By;
t43 = I_Bxy.*I_Byz.*I_Bzz.*omega_By;
t44 = I_Bxz.*I_Byy.*I_Bzz.*omega_By;
t47 = t5-I_Bxx.*I_Byy;
t48 = t12.*t47;
t49 = sin(phi1);
t50 = cos(phi1);
df_dx = reshape([0.0,-omega_Bz,omega_By,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,omega_Bz,0.0,-omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-omega_By,omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,v_Bz,-v_By,t12.*(t25+t26+t34+t36+t38+t42+t43+t44-I_Byz.*omega_Bx.*t6.*2.0-I_Bxz.*omega_By.*t7.*2.0-I_Bxz.*omega_By.*t13-I_Bxx.*I_Bxy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx.*2.0-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx.*2.0-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz-I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t12.*(I_Bxz.*omega_Bx.*t5.*-2.0+I_Bxx.*omega_Bz.*t6-I_Bxz.*omega_Bx.*t6.*2.0+I_Bxx.*omega_Bz.*t7-I_Byz.*omega_By.*t6.*2.0-I_Bzz.*omega_Bz.*t5-I_Bzz.*omega_Bz.*t6+I_Bxx.*omega_Bz.*t14-I_Byz.*omega_By.*t24-I_Bzz.*omega_Bz.*t24+I_Bxx.*I_Bxy.*I_Bxz.*omega_By+I_Bxx.*I_Bxy.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_By+I_Bxx.*I_Byz.*I_Bzz.*omega_By+I_Bxy.*I_Bxz.*I_Bzz.*omega_By),t12.*(I_Bxx.*omega_By.*t5-I_Bxy.*omega_Bx.*t5.*2.0-I_Bxy.*omega_Bx.*t6.*2.0+I_Bxx.*omega_By.*t7-I_Byy.*omega_By.*t5-I_Byy.*omega_By.*t6-I_Byz.*omega_Bz.*t5.*2.0+I_Bxx.*omega_By.*t13-I_Byy.*omega_By.*t24-I_Byz.*omega_Bz.*t24+I_Bxx.*I_Bxy.*I_Byy.*omega_Bx.*2.0+I_Bxx.*I_Bxy.*I_Bxz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_Bz+I_Bxy.*I_Bxz.*I_Byy.*omega_Bz+I_Bxx.*I_Byz.*I_Bzz.*omega_Bz-I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,-v_Bz,0.0,v_Bx,t12.*(I_Bxz.*omega_Bx.*t7.*-2.0-I_Byz.*omega_By.*t5.*2.0+I_Byy.*omega_Bz.*t6+I_Byy.*omega_Bz.*t7-I_Byz.*omega_By.*t7.*2.0-I_Bzz.*omega_Bz.*t5-I_Bzz.*omega_Bz.*t7-I_Bxz.*omega_Bx.*t13+I_Byy.*omega_Bz.*t14-I_Bzz.*omega_Bz.*t13-I_Bxx.*I_Bxy.*I_Byz.*omega_Bx+I_Bxx.*I_Bxz.*I_Byy.*omega_Bx+I_Bxy.*I_Bxz.*I_Byy.*omega_By.*2.0+I_Bxy.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Byz.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_By.*2.0),-t12.*(t25-t26+t33+t35+t37+t39+t40+t41-I_Byz.*omega_Bx.*t6.*2.0-I_Bxz.*omega_By.*t7.*2.0-I_Byz.*omega_Bx.*t24-I_Bxx.*I_Bxy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz+I_Bxy.*I_Byz.*I_Bzz.*omega_By.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t12.*(-I_Bxx.*omega_Bx.*t5-I_Bxx.*omega_Bx.*t7-I_Bxy.*omega_By.*t5.*2.0+I_Byy.*omega_Bx.*t5+I_Byy.*omega_Bx.*t6-I_Bxy.*omega_By.*t7.*2.0-I_Bxz.*omega_Bz.*t5.*2.0-I_Bxx.*omega_Bx.*t13-I_Bxz.*omega_Bz.*t13+I_Byy.*omega_Bx.*t24+I_Bxx.*I_Bxy.*I_Byy.*omega_By.*2.0+I_Bxx.*I_Bxy.*I_Byz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byy.*omega_Bz+I_Bxy.*I_Byy.*I_Byz.*omega_Bz+I_Bxz.*I_Byy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Byz.*I_Bzz.*omega_Bz+I_Bxz.*I_Byy.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t49,t50,0.0,v_By,-v_Bx,0.0,-t12.*(I_Bxy.*omega_Bx.*t7.*-2.0-I_Byy.*omega_By.*t6-I_Byy.*omega_By.*t7+I_Bzz.*omega_By.*t5-I_Byz.*omega_Bz.*t6.*2.0-I_Byz.*omega_Bz.*t7.*2.0+I_Bzz.*omega_By.*t7-I_Bxy.*omega_Bx.*t14-I_Byy.*omega_By.*t14+I_Bzz.*omega_By.*t13+I_Bxx.*I_Bxy.*I_Bzz.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bx+I_Bxy.*I_Byy.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_Bz.*2.0),t12.*(-I_Bxx.*omega_Bx.*t6-I_Bxx.*omega_Bx.*t7-I_Bxy.*omega_By.*t6.*2.0+I_Bzz.*omega_Bx.*t5-I_Bxz.*omega_Bz.*t6.*2.0+I_Bzz.*omega_Bx.*t6-I_Bxz.*omega_Bz.*t7.*2.0-I_Bxx.*omega_Bx.*t14-I_Bxy.*omega_By.*t14+I_Bzz.*omega_Bx.*t24+I_Bxx.*I_Bxy.*I_Bzz.*omega_By+I_Bxx.*I_Bxz.*I_Byz.*omega_By+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxy.*I_Byy.*I_Bzz.*omega_By-I_Bxz.*I_Byy.*I_Byz.*omega_By+I_Bxy.*I_Byz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_By),t12.*(t33-t34+t35-t36+t37-t38+t39+t40-t41-t42+t43-t44+I_Bxz.*omega_By.*t13-I_Byz.*omega_Bx.*t24-I_Bxx.*I_Bxy.*I_Byz.*omega_By+I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bz.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t3.*t50,t3.*t49,t4,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t18,t21,-t12.*t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t21,t29,t32,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t12.*t23,t32,t48,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t18,t21,-t12.*t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t21,t29,t32,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t12.*t23,t32,t48,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,g.*t3.*t50,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-omega_By.*t50-omega_Bz.*t3.*t49,-omega_By.*t49+omega_Bz.*t3.*t50,0.0,g.*t4.*cos(phi3),g.*t4.*t49,-g.*t3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,omega_Bz.*t4.*t50,omega_Bz.*t4.*t49,-omega_Bz.*t3,-g.*t3.*sin(phi3),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[21, 21]);
