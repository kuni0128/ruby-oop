# frozen_string_literal: true

require_relative '../lib/gear.rb'

RSpec.describe Gear do
  describe '#ratio' do
    subject { Gear.new(chainring, cog).ratio }

    context 'hoge' do
      let(:chainring) { 52 }
      let(:cog) { 11 }
  
      it { is_expected.to eq 4.7272727272727275 }
    end

    context 'fuga' do
      let(:chainring) { 30 }
      let(:cog) { 27 }
  
      it { is_expected.to eq 1.1111111111111112 }
    end
  end
end
