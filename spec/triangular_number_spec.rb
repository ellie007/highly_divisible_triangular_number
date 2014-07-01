require 'triangular_number'

describe HighlyDivisibleTriangularNumber do

  let(:tri_num) { HighlyDivisibleTriangularNumber.new }

  it 'generates a triangular number with a given value' do
    expect(tri_num.generates_triangle_number(10)).to eq(55)
  end

  it 'does the prime factorization of a single number' do
    expect(tri_num.find_all_factors(28)).to eq(6)
  end

  it 'find the highly divisible triangular number' do
    expect(tri_num.highly_divisible_triangular_number(5)).to eq(28)
  end

  it 'find the highly divisible triangular number' do
    expect(tri_num.highly_divisible_triangular_number(500)).to eq(76576500)
  end

end
