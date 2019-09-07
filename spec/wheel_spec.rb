# frozen_string_literal: true

require_relative '../lib/wheel.rb'

RSpec.describe Wheel do
  let(:wheel) { Wheel.new(rim, tire) }
  let(:rim) { 26 }
  let(:tire) { 1.5 }

  describe '#diameter' do
    subject { wheel.diameter }

    it { is_expected.to eq 29.0 }
  end

  describe '#circumference' do
    subject { wheel.circumference }

    it { is_expected.to eq 91.106186954104 }
  end
end
