rule:
    input:
        gff = config["gff_file"],
        fasta = config["fasta_file"]
    output:
        "results/parsed_gff_fasta.txt"
    shell:
        """
        python3 scripts/parsed_gff_fasta.py
        """