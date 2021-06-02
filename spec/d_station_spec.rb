require 'd_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end