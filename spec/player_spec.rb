describe Player do
  subject(:name) { described_class.new("Name") }
  it "has a name" do
    expect(subject.name).to eq "Name"
  end
end
