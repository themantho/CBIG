function [networks,blocks,net_ind] = CBIG_TRBPC_generate_block_pairs_18networks
% networks,blocks,net_ind] = CBIG_TRBPC_generate_block_pairs_18networks
%
% this function outputs the names of the 18 networks from the 419 x 419
% Schaefer parcellation, indices of the 18 networks inside a given row of
% the matrix, and pairs of the named networks
%
% Written by Angela Tam & CBIG under MIT license: https://github.com/ThomasYeoLab/CBIG/blob/master/LICENSE.md
    
% set indices for each network inside the (pre-)rearranged matrix
net_ind = [];
net_ind.temppar = 1:16;
net_ind.dmnC = 17:29;
net_ind.dmnB = 30:61;
net_ind.dmnA = 62:95;
net_ind.contC = 96:107;
net_ind.contB = 108:132;
net_ind.contA = 133:156;
net_ind.limB = 157:169;
net_ind.limA = 170:180;
net_ind.salventattB = 181:197;
net_ind.salventattA = 198:231;
net_ind.dorsattB = 232:256;
net_ind.dorsattA = 257:283;
net_ind.sommotB = 284:314;
net_ind.sommotA = 315:353;
net_ind.visB = 354:376;
net_ind.visA = 377:400;
net_ind.subcort = 401:419;

blocks = {'temppar_dmnC',...
  'temppar_dmnB',...
  'temppar_dmnA',...
  'temppar_contC',...
  'temppar_contB',...
  'temppar_contA',...
  'temppar_limB',...
  'temppar_limA',...
  'temppar_salventattB',...
  'temppar_salventattA',...
  'temppar_dorsattB',...
  'temppar_dorsattA',...
  'temppar_sommotB',...
  'temppar_sommotA',...
  'temppar_visB',...
  'temppar_visA',...
  'temppar_subcort',...
  'dmnC_dmnB',...
  'dmnC_dmnA',...
  'dmnC_contC',...
  'dmnC_contB',...
  'dmnC_contA',...
  'dmnC_limB',...
  'dmnC_limA',...
  'dmnC_salventattB',...
  'dmnC_salventattA',...
  'dmnC_dorsattB',...
  'dmnC_dorsattA',...
  'dmnC_sommotB',...
  'dmnC_sommotA',...
  'dmnC_visB',...
  'dmnC_visA',...
  'dmnC_subcort',...
  'dmnB_dmnA',...
  'dmnB_contC',...
  'dmnB_contB',...
  'dmnB_contA',...
  'dmnB_limB',...
  'dmnB_limA',...
  'dmnB_salventattB',...
  'dmnB_salventattA',...
  'dmnB_dorsattB',...
  'dmnB_dorsattA',...
  'dmnB_sommotB',...
  'dmnB_sommotA',...
  'dmnB_visB',...
  'dmnB_visA',...
  'dmnB_subcort',...
  'dmnA_contC',...
  'dmnA_contB',...
  'dmnA_contA',...
  'dmnA_limB',...
  'dmnA_limA',...
  'dmnA_salventattB',...
  'dmnA_salventattA',...
  'dmnA_dorsattB',...
  'dmnA_dorsattA',...
  'dmnA_sommotB',...
  'dmnA_sommotA',...
  'dmnA_visB',...
  'dmnA_visA',...
  'dmnA_subcort',...
  'contC_contB',...
  'contC_contA',...
  'contC_limB',...
  'contC_limA',...
  'contC_salventattB',...
  'contC_salventattA',...
  'contC_dorsattB',...
  'contC_dorsattA',...
  'contC_sommotB',...
  'contC_sommotA',...
  'contC_visB',...
  'contC_visA',...
  'contC_subcort',...
  'contB_contA',...
  'contB_limB',...
  'contB_limA',...
  'contB_salventattB',...
  'contB_salventattA',...
  'contB_dorsattB',...
  'contB_dorsattA',...
  'contB_sommotB',...
  'contB_sommotA',...
  'contB_visB',...
  'contB_visA',...
  'contB_subcort',...
  'contA_limB',...
  'contA_limA',...
  'contA_salventattB',...
  'contA_salventattA',...
  'contA_dorsattB',...
  'contA_dorsattA',...
  'contA_sommotB',...
  'contA_sommotA',...
  'contA_visB',...
  'contA_visA',...
  'contA_subcort',...
  'limB_limA',...
  'limB_salventattB',...
  'limB_salventattA',...
  'limB_dorsattB',...
  'limB_dorsattA',...
  'limB_sommotB',...
  'limB_sommotA',...
  'limB_visB',...
  'limB_visA',...
  'limB_subcort',...
  'limA_salventattB',...
  'limA_salventattA',...
  'limA_dorsattB',...
  'limA_dorsattA',...
  'limA_sommotB',...
  'limA_sommotA',...
  'limA_visB',...
  'limA_visA',...
  'limA_subcort',...
  'salventattB_salventattA',...
  'salventattB_dorsattB',...
  'salventattB_dorsattA',...
  'salventattB_sommotB',...
  'salventattB_sommotA',...
  'salventattB_visB',...
  'salventattB_visA',...
  'salventattB_subcort',...
  'salventattA_dorsattB',...
  'salventattA_dorsattA',...
  'salventattA_sommotB',...
  'salventattA_sommotA',...
  'salventattA_visB',...
  'salventattA_visA',...
  'salventattA_subcort',...
  'dorsattB_dorsattA',...
  'dorsattB_sommotB',...
  'dorsattB_sommotA',...
  'dorsattB_visB',...
  'dorsattB_visA',...
  'dorsattB_subcort',...
  'dorsattA_sommotB',...
  'dorsattA_sommotA',...
  'dorsattA_visB',...
  'dorsattA_visA',...
  'dorsattA_subcort',...
  'sommotB_sommotA',...
  'sommotB_visB',...
  'sommotB_visA',...
  'sommotB_subcort',...
  'sommotA_visB',...
  'sommotA_visA',...
  'sommotA_subcort',...
  'visB_visA',...
  'visB_subcort',...
  'visA_subcort',...
  'temppar_temppar',...
  'dmnC_dmnC',...
  'dmnB_dmnB',...
  'dmnA_dmnA',...
  'contC_contC',...
  'contB_contB',...
  'contA_contA',...
  'limB_limB',...
  'limA_limA',...
  'salventattB_salventattB',...
  'salventattA_salventattA',...
  'dorsattB_dorsattB',...
  'dorsattA_dorsattA',...
  'sommotB_sommotB',...
  'sommotA_sommotA',...
  'visB_visB',...
  'visA_visA',...
  'subcort_subcort'};

networks = {'temppar',...
    'dmnC',...
    'dmnB',...
    'dmnA',...
    'contC',...
    'contB',...
    'contA',...
    'limB',...
    'limA',...
    'salventattB',...
    'salventattA',...
    'dorsattB',...
    'dorsattA',...
    'sommotB',...
    'sommotA',...
    'visB',...
    'visA',...
    'subcort'};
end