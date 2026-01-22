seed = -1
seqfile = ../GH_CDS_Alignment.phy
treefile = ../crossbracing_tree.trees
mcmcfile = mcmc.txt
outfile = mcmctree_output.txt

ndata = 1
seqtype = 0 * 0 : nucleotides; 1: codons; 2: AAs
usedata = 3 * 0: no data; 1:seq; 2:approximation; 3:out.BV (in.BV)
clock = 2 * 1: global clock; 2: independent; and 3: correlated rates
duplication = 1

model = 7 * 0:JC69, 1:K80, 2:F81, 3:F84, 4:HKY85
alpha = 0.5 * alpha for gamma rates at sites
ncatG = 5 * No. categories in discrete gamma
cleandata = 0 * remove sites with ambiguity data (1:yes, 0:no)?

BDparas = 1 1 0.1 m * birth, death, sampling
kappa_gamma = 6 2 * gamma prior for kappa
alpha_gamma = 1 1 * gamma prior for alpha

rgene_gamma = 2 20 1 * gammaDir prior for rate for genes
sigma2_gamma = 1 10 1 * gammaDir prior for sigma^2 (for clock=2 or 3)
finetune = 1: .1 .1 .1 .1 .1 .1 * auto (0 or 1) : times, rates, mixing...
print = 1 * 0: no mcmc sample; 1: everything except branch 2: ev...
burnin = 1200
sampfreq = 10
nsample = 12000

checkpoint = 1 0.01 mcmctree.ckpt1 * Type of checkpointing: 0: none (default);  1: save;  2: resume
                                   * Probability for checkpointing. E.g.: 0.01 will save 100 times
                                   * if the run is uninterrupted
                                   * Output filename, default "mcmctree.ckpt1"
