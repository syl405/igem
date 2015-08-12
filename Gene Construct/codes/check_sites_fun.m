function gene = check_sites_fun(seq,name)

gene = struct('name',name,'seq',seq);

res_sites = struct('ecor1','GAATTC');
res_sites.ecor1_p = 'CTTAAG';
res_sites.xbal = 'TCTAGA';
res_sites.xbal_p = 'AGATCT';
res_sites.spel = 'ACTAGT';
res_sites.spel_p = 'TGATCA';
res_sites.pst1 = 'CTGCAG';
res_sites.pst1_p = 'GACGTC';
res_sites.eag1 = 'CGGCCG';
res_sites.eag1_p = 'GCCGGC';
res_sites.not1 = 'GCGGCCGC';
res_sites.not1_p = 'CGCCGGCG';

sites = fieldnames(res_sites);

for j=1:numel(sites)
    fieldname = sites{j};
    site_seq = getfield(res_sites,fieldname);
    locs = strfind(gene.seq, site_seq);
    hits = numel(locs);
    gene = setfield(gene,[fieldname '_locs'],locs);
    gene = setfield(gene,[fieldname '_hits'],hits);
end