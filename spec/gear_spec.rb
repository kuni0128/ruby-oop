# frozen_string_literal: true

require_relative '../lib/gear.rb'

RSpec.describe Gear do
  let(:gear) { Gear.new(chainring, cog, rim, tire) }

  describe '#ratio' do
    subject { gear.ratio }

    context 'when large gear' do
      let(:chainring) { 52 }
      let(:cog) { 11 }
      let(:rim) { 26 }
      let(:tire) { 1.5 }

      it { is_expected.to eq 4.7272727272727275 }
    end

    context 'when small gear' do
      let(:chainring) { 30 }
      let(:cog) { 27 }
      let(:rim) { 24 }
      let(:tire) { 1.25 }

      it { is_expected.to eq 1.1111111111111112 }
    end
  end

  describe '#gear_inches' do
    subject { gear.gear_inches }

    context 'when large gear' do
      let(:chainring) { 52 }
      let(:cog) { 11 }
      let(:rim) { 26 }
      let(:tire) { 1.5 }

      it { is_expected.to eq 137.0909090909091 }
    end

    context 'when small gear' do
      let(:chainring) { 30 }
      let(:cog) { 27 }
      let(:rim) { 24 }
      let(:tire) { 1.25 }

      it { is_expected.to eq 29.444444444444446 }
    end
  end
end
