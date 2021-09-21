require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peep = Peep.all

      expect(peep).to include("It's a beautiful day")
      expect(peep).to include("Wake me up when September ends")
    end
  end
end