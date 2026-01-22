seed = -1
seqfile = ../GH_CDS_Alignment.phy
treefile = ../crossbracing_tree.trees
mcmcfile = mcmc.txt
outfile = mcmctree_output.txt

ndata = 1
seqtype = 0 * 0 : nucleotides; 1: codons; 2: AAs
usedata = 2 * 0: no data; 1:seq; 2:approximation; 3:out.BV (in.BV)
clock = 2 * 1: global clock; 2: independent; and 3: correlated rates
duplication = 1

model = 4 * 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85
alpha = 0.5 * alpha for gamma rates at sites
ncatG = 5 * No. categories in discrete gamma
cleandata = 0 * remove sites with ambiguity data (1:yes, 0:no)?

BDparas = 1 1 0.1 m * birth, death, sampling
rgene_gamma = 2 20 1 * gammaDir prior for rate for genes
sigma2_gamma = 1 10 1 * gammaDir prior for sigma^2 (for clock=2 or 3)
print = 2 * 0: no mcmc sample; 1: everything except branch 2: ev...
burnin = 2000
sampfreq = 200
nsample = 20000

checkpoint = 1 0.01 mcmctree.ckpt1 * Type of checkpointing: 0: none (default);  1: save;  2: resume
                                   * Probability for checkpointing. E.g.: 0.01 will save 100 times
                                   * if the run is uninterrupted
                                   * Output filename, default "mcmctree.ckpt1"
