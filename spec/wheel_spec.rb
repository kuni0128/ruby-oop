# frozen_string_literal: true

require_relative '../lib/wheel.rb'

RSpec.describe Wheel do
  let(:wheel) { Wheel.new(rim, tire) }

  describe '#diameter' do
    subject { wheel.diameter }
    let(:rim) { 26 }
    let(:tire) { 1.5 }

    it { is_expected.to eq 29.0 }
  end
end
