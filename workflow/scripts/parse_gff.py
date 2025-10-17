from BCBio import GFF

gff_file = snakemake.input.gff
counts_file = snakemake.output.counts

gene_count = 0
with open(gff_file) as f:
    for rec in GFF.parse(f):
        gene_count += sum(1 for feature in rec.features if feature.type == "gene")

with open(counts_file, "w") as out_f:
    out_f.write(f"Total genes:\n{gene_count}\n")