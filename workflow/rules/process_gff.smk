rule:
    input:
        gff = config["gff_file"]
    output:
        "results/parsed_gff.txt"
    shell:
        """
        python3 scripts/parsed_gff_fasta.py
        """