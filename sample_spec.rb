require_relative './my_spec'

def fizzbuzz(num)
  if num % 15 == 0
    'fizzbuzz'
  elsif num % 3 == 0
    'fizz'
  elsif num % 5 == 0
    'buzz'
  else
    'no match'
  end
end

context 'fizzbuzz' do
  it '1: no matchとなる' do
    res = fizzbuzz(1)
    expect(res).to eq 'no match'
  end

  it '3: fizzとなる' do
    res = fizzbuzz(3)
    expect(res).to eq 'fizz'
  end

  it '5: buzzとなる' do
    res = fizzbuzz(5)
    expect(res).to eq 'buzz'
  end

  it '15: fizzbuzzとなる' do
    res = fizzbuzz(15)
    expect(res).to eq 'fizzbuzz'
  end

  it '17: no matchとなる' do
    res = fizzbuzz(17)
    expect(res).to eq 'no match'
  end
end
