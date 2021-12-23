%%%elasticity
set(0,'defaultaxesfontsize',30,'defaulttextinterpreter','latex');
beta_1 = 0.3925; 
beta_2 = 0.1417;
beta_3 = 0.2735;
beta_4 = 0.0171;
beta_5 = 0.1043; 
beta_6 = 0.1847; 
beta_1y = 0.3956;
beta_2y = 0.0393;
beta_3y = 0.2628;
beta_4a = 0.3509;
beta_5a = 0.0189;
beta_6a = 0.2998;
mu_y = 0.00004312;
mu_a =  0.00004312;
delta = 0.2;
pi     = 0.3;
rho     = 0.00007;
sigma_ey = 0.333333;
sigma_ea = 0.333333;
k  = 0.78;
q  = 0.78; 
sigma_py = 0.47619;
sigma_pa = 0.47619;
phi = 38789; %number o birth per day in west africa
gamma_ay = 0.10526;
gamma_iy = 0.057;
gamma_ia = 0.057;
gamma_aa = 0.10526;
gamma_hy = 0.1;
gamma_ha = 0.1;
emptyset_iy = 0.103;
emptyset_ia = 0.103;
theta = 0.0020833;
omega = 0.0020833;
tau_y = 0.03;
tau_a = 0.145;
nu_y = 0.026;
nu_a = 0.14;

T_0  = 404135742;
S_ey = phi/(mu_y+rho);
 S_ea = (rho*S_ey)/mu_a;
 C_1  = S_ey/T_0;
 C_2  = S_ea/T_0;
 f_1  = (1-delta)*beta_1*C_1;
 f_2  = (1-pi)*beta_1y*C_2;
 f_3  = (1-delta)*beta_2*C_1;
 f_4  = (1-pi)*beta_2y*C_2;
 f_5  = (1-delta)*beta_3*C_1;
 f_6  = (1-pi)*beta_3y*C_2;
 f_7  = (1-delta)*beta_4a*C_1;
 f_8  = (1-pi)*beta_4*C_2;
 f_9  = (1-delta)*beta_5a*C_1;
 f_10  = (1-pi)*beta_5*C_2;
 f_11  = (1-delta)*beta_6a*C_1;
 f_12  = (1-pi)*beta_6*C_2;
 K_ey  = mu_y + sigma_ey;
 K_py  = mu_y + sigma_py;
 K_ay  = mu_y + gamma_ay;
 K_iy  = mu_y + tau_y + emptyset_iy + gamma_iy;
 K_hy  = mu_y + nu_y + gamma_hy;
 K_ea  = mu_a + sigma_ea;
 K_pa  = mu_a + sigma_pa;
 K_aa  = mu_a + gamma_aa; 
 K_ia  = mu_a + tau_a + emptyset_ia + gamma_ia;
 K_ha  = mu_a + nu_a + gamma_ha;
 K_k  = (k-1)*sigma_py;
 K_q  = (q-1)*sigma_pa;
 h_1  = sigma_ey/(K_ey*K_py);
 h_2  = (-K_k*sigma_ey)/(K_ey*K_py*K_ay);
 h_3  = (k*sigma_ey*sigma_py)/(K_ey*K_py*K_iy);
 h_4  = (k*sigma_ey*sigma_py*emptyset_iy)/(K_ey*K_py*K_iy*K_hy);
 h_5  = (-K_k)/(K_ay*K_py);
 h_6  = (k*sigma_py)/(K_iy*K_py);
 h_7  = (k*emptyset_iy*sigma_py)/(K_hy*K_py*K_iy);
 h_8  = emptyset_iy/(K_hy*K_iy);
 h_9  = sigma_ea/(K_ea*K_pa);
 h_10  = (-K_q*sigma_ea)/(K_ea*K_pa*K_aa);
 h_11  = (q*sigma_ea*sigma_pa)/(K_ea*K_pa*K_ia);
 h_12  = (q*sigma_ea*sigma_pa*emptyset_ia)/(K_ea*K_pa*K_ia*K_ha);
 h_13  = (-K_q)/(K_aa*K_pa);
 h_14  = (q*sigma_pa)/(K_ia*K_pa);
 h_15  = (q*emptyset_ia*sigma_pa)/(K_ha*K_pa*K_ia);
 h_16  = emptyset_ia/(K_ha*K_ia);
 m_1  = f_5*h_3 + f_3*h_2 + f_1*h_1;
 m_2  = f_4*h_2 + f_2*h_1 + f_6*h_3; 
 m_3  = f_5*h_6 + f_3*h_5 + f_1/K_py;
 m_4  = f_4*h_5 + f_6*h_6 + f_2/K_py;
 m_5  = f_3/K_ay;
 m_6  = f_4/K_ay;
 m_7  = f_5/K_iy;
 m_8  = f_6/K_iy;
 m_9  = f_9*h_10 + f_11*h_11 + f_7*h_9; 
 m_10  = f_10*h_10 + f_12*h_11 + f_8*h_9; 
 m_11  = f_11*h_14 + f_9*h_13 + f_7/K_pa;
 m_12  = f_12*h_14 + f_10*h_13 + f_8/K_pa;
 m_13  = f_9/K_aa;
 m_14  = f_10/K_aa;
 m_15  = f_11/K_ia;
 m_16  = f_12/K_ia;
 C_3  = (C_1*sigma_ey)/(2*K_ey*K_py);
 C_4  = beta_1 +  (beta_2*sigma_py)/K_ay;
 C_5  = (beta_3*sigma_py)/K_iy - (beta_2*sigma_py)/K_ay;
 C_6  = (C_2*sigma_ea)/(2*K_ea*K_pa);
 C_7  = beta_4 +  (beta_5*sigma_pa)/K_aa;
 C_8  = (beta_6*sigma_pa)/K_ia - (beta_5*sigma_pa)/K_aa; 
 C_9  = (C_2*sigma_ey)/(K_ey*K_py);
 C_10  = beta_1y +  (beta_2y*sigma_py)/K_ay;
 C_11  = (beta_3y*sigma_py)/K_iy - (beta_2y*sigma_py)/K_ay;
 C_12  = (C_1*sigma_ea)/(K_ea*K_pa);
 C_13  = beta_4a +  (beta_5a*sigma_pa)/K_aa;
 C_14  = (beta_6a*sigma_pa)/K_ia - (beta_5a*sigma_pa)/K_aa; 
 R_c1 = m_1/2 ;
 R_c2 = m_10/2;
 R_c3 = sqrt((m_1 - m_10)^2 + 4*m_2*m_9)/2;
 R_c  = R_c1 + R_c2 + R_c3;

sb1 = C_3*(1-delta)*(1+((C_3*(1-delta)*(C_4+k*C_5)-C_6*(1-pi)*(C_7+q*C_8))/R_c3));
eb1 = sb1*(beta_1/R_c);

sb2 = ((C_3*(1-delta)*(1-k)*sigma_py)/K_ay)*(1+((C_3*(1-delta)*(C_4+k*C_5)-C_6*(1-pi)*(C_7+q*C_8))/R_c3));
eb2 = sb2*(beta_2/R_c);


sb3 = k*C_3*(1-delta)*(sigma_py/K_iy)*(1+((C_3*(1-delta)*(C_4+k*C_5)-C_6*(1-pi)*(C_7+q*C_8))/R_c3));
eb3 = sb3*(beta_3/R_c);


sb4 = C_6*(1-pi)*(1+((C_6*(1-pi)*(C_7+q*C_8)-C_3*(1-delta)*(C_4+k*C_5))/R_c3));
eb4 = sb4*(beta_4/R_c);


sb5 = ((C_6*(1-pi)*(1-q)*sigma_pa)/K_aa)*(1+((C_6*(1-pi)*(C_7+q*C_8)-C_3*(1-delta)*(C_4+k*C_5))/R_c3));
eb5 = sb5*(beta_5/R_c);


sb6 = q*C_6*(1-pi)*(sigma_pa/K_ia)*(1+((C_6*(1-pi)*(C_7+q*C_8)-C_3*(1-delta)*(C_4+k*C_5))/R_c3));
eb6 = sb6*(beta_6/R_c);


sb1y = (C_9*C_12*(1-delta)*(1-pi)*(C_13+q*C_14))/(2*R_c3);
eb1y = sb1y*(beta_1y/R_c);


sb2y = (C_9*C_12*(1-delta)*(1-pi)*(1-k)*(C_13+q*C_14)*sigma_py)/(2*K_ay*R_c3);
eb2y = sb2y*(beta_2y/R_c);


sb3y = (k*C_9*C_12*(1-delta)*(1-pi)*(C_13+q*C_14)*sigma_py)/(2*K_iy*R_c3);
eb3y = sb3y*(beta_3y/R_c);


sb4a = (C_9*C_12*(1-delta)*(1-pi)*(C_10+k*C_11))/(2*R_c3);
eb4a = sb4a*(beta_4a/R_c);


sb5a = (C_9*C_12*(1-delta)*(1-pi)*(1-q)*(C_10+k*C_11)*sigma_pa)/(2*K_aa*R_c3);
eb5a = sb5a*(beta_5a/R_c);


sb6a = (q*C_9*C_12*(1-delta)*(1-pi)*(C_10+k*C_11)*sigma_pa)/(2*K_ia*R_c3);
eb6a = sb6a*(beta_6a/R_c);


disp('The sensitivity of $R_c$ with espect to $beta_1$ is:');
disp(sb1)
    disp('The elasticity of $R_c$ with espect to $beta_1$ is:');
    disp(eb1)  
        
 disp('The sensitivity of $R_c$ with espect to $beta_2$ is:');
 disp(sb2)
    disp('The elasticity of $R_c$ with espect to $beta_2$ is:');
    disp(eb2)
    
  disp('The sensitivity of $R_c$ with espect to $beta_3$ is:');
 disp(sb3)
    disp('The elasticity of $R_c$ with espect to $beta_3$ is:');
    disp(eb3)  
    
  disp('The sensitivity of $R_c$ with espect to $beta_4$ is:');
 disp(sb4)
    disp('The elasticity of $R_c$ with espect to $beta_4$ is:');
    disp(eb4)  
    
  disp('The sensitivity of $R_c$ with espect to $beta_5$ is:');
 disp(sb5)
    disp('The elasticity of $R_c$ with espect to $beta_5$ is:');
    disp(eb5)  
    
 disp('The sensitivity of $R_c$ with espect to $beta_6$ is:');
 disp(sb6)
    disp('The elasticity of $R_c$ with espect to $beta_6$ is:');
    disp(eb6)   
%  

 disp('The sensitivity of $R_c$ with espect to $beta_1y$ is:');
disp(sb1y)
    disp('The elasticity of $R_c$ with espect to $beta_1y$ is:');
    disp(eb1y)  
        
 disp('The sensitivity of $R_c$ with espect to $beta_2y$ is:');
 disp(sb2y)
    disp('The elasticity of $R_c$ with espect to $beta_2y$ is:');
    disp(eb2y)
    
  disp('The sensitivity of $R_c$ with espect to $beta_3y$ is:');
 disp(sb3y)
    disp('The elasticity of $R_c$ with espect to $beta_3y$ is:');
    disp(eb3y)  
    
  disp('The sensitivity of $R_c$ with espect to $beta_4a$ is:');
 disp(sb4a)
    disp('The elasticity of $R_c$ with espect to $beta_4a$ is:');
    disp(eb4a)  
    
  disp('The sensitivity of $R_c$ with espect to $beta_5a$ is:');
 disp(sb5a)
    disp('The elasticity of $R_c$ with espect to $beta_5a$ is:');
    disp(eb5a)  
    
 disp('The sensitivity of $R_c$ with espect to $beta_6a$ is:');
 disp(sb6a)
    disp('The elasticity of $R_c$ with espect to $beta_6a$ is:');
    disp(eb6a)   
    
    
