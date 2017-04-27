describe Player do

  subject(:chris) { described_class.new("Chris") }
  subject(:ben) { described_class.new("Ben") }

  it "has a name" do
    expect(ben.name).to eq "Ben"
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(subject.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#receives damage" do
    it "reduces hit point by 10" do
      expect { chris.receive_damage }.to change { chris.hit_points }.by(-10)
    end
  end

end
