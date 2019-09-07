# frozen_string_literal: true

require_relative '../lib/gear.rb'
require_relative '../lib/wheel.rb'

RSpec.describe Gear do
  let(:gear) { Gear.new(chainring, cog, wheel) }
  let(:wheel) { Wheel.new(26, 1.5) }

  describe '#ratio' do
    subject { gear.ratio }

    context 'when large gear' do
      let(:chainring) { 52 }
      let(:cog) { 11 }

      it { is_expected.to eq 4.7272727272727275 }
    end

    context 'when small gear' do
      let(:chainring) { 30 }
      let(:cog) { 27 }

      it { is_expected.to eq 1.1111111111111112 }
    end
  end

  describe '#gear_inches' do
    subject { gear.gear_inches }

    context 'when large gear' do
      let(:chainring) { 52 }
      let(:cog) { 11 }

      it { is_expected.to eq 137.0909090909091 }
    end

    context 'when small gear' do
      let(:chainring) { 30 }
      let(:cog) { 27 }

      it { is_expected.to eq 32.22222222222222 }
    end
  end
end
