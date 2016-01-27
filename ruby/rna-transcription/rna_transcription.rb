class Complement

  def self.of_dna(input)
    strand_array = input.split("")
    check_nucleotides(strand_array)


    rna_strand = []

    strand_array.each do |nucleotide|
      rna_strand << find_rna_complement(nucleotide)
    end

    rna_strand.join("")
  end

  def self.check_nucleotides(input_strand)
    acceptable_nucleotides = ['G', 'C', 'T', 'A']
    input_strand.each do |nucleotide|
      unless acceptable_nucleotides.include?(nucleotide)
        raise ArgumentError.new("That aint no nucleotide yo!")
      end
    end
  end

  def self.find_rna_complement(nucleotide)
    if nucleotide == 'G'
      return 'C'
    elsif nucleotide == 'C'
      return 'G'
    elsif nucleotide == 'T'
      return 'A'
    else return 'U'
    end
  end


end