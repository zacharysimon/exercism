class Complement
  VERSION = 3

  def self.of_dna(input)
    strand_array = input.split("")
    rna_strand = []
    
    check_nucleotides(strand_array)
    strand_array.each {|nucleotide| rna_strand << find_rna_complement(nucleotide)}

    rna_strand.join("")
  end

  def self.check_nucleotides(input_strand)
    acceptable_nucleotides = ['G', 'C', 'T', 'A']

    input_strand.each {|nucleotide| raise ArgumentError.new unless acceptable_nucleotides.include?(nucleotide)}
  end

  def self.find_rna_complement(nucleotide)
      return 'C' if nucleotide == 'G'
      return 'G' if nucleotide == 'C'
      return 'A' if nucleotide == 'T'
      return 'U' if nucleotide == 'A'
  end

end