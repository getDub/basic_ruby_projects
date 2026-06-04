require_relative '../lib/caeser_cipher'

# Stubbing(allow) vs Mocking(expect)
# Stubbing is supplying fake data to test vs Mocking is verifying 
# if a method was called.
# Stubbing doesn't care if meothd is ever called vs Mocking is strict.
# It will fail if the method is not called.
# Stubbing simulates an database look up or an API state vs Mocking is 
# verifying that an alery or email notification was triggered.

describe '#caesar_cipher' do

  it 'moves each letter by the number given' do
    expect(caesar_cipher('abc', 3)).to eq('def')
  end

  it 'moves backward in the alphabet when given a negative number' do
    expect(caesar_cipher('def', -3)).to eq('abc')
  end

  it 'cycles back to the start of the alphabet if it passes z' do
    expect(caesar_cipher('zzz', 1)).to eq('aaa')
  end

  it 'returns to the end of the alphabet if it goes backward past a' do
    expect(caesar_cipher('aaa', -1)).to eq('zzz')
    expect(caesar_cipher('mmm', -27)).to eq('lll')
  end
end