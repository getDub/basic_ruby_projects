require_relative '../lib/caeser_cipher'

describe '#caesar_cipher' do
  let(:letter) { 'what' }
  context 'when provided a string' do
    it 'will match the first and last letter in the string' do
    letter.match(/[a-z]/)
    expect(letter.chars).to start_with('w').and end_with('t')
    end
  end
  context 'when string is split into an array and sampled' do
    it 'will equal all letters in word what' do
      expect(letter.chars.sample).to eq('w').or eq('h').or eq('a').or eq('t')
    end
  end
  context 'when method is called' do
    it 'will return the length of the string' do
      rando_string = 'What a String!'
      rando_number = 5
      result = caesar_cipher(rando_string, rando_number)
      expect(result.length).to eq(14)
    end
    it 'will return the encrypte answer' do
      rando_string = 'What a String!'
      rando_number = 5
      result = caesar_cipher(rando_string, rando_number)
      expect(result).to eq('Bmfy f Xywnsl!')
    end
  end
end