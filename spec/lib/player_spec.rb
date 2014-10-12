require 'spec_helper'
require 'player'

describe Player do
  subject(:player) do
    described_class.new(
      name: name,
      rating: rating,
      position: position
    )
  end

  let(:name) { 'Lionel Messi' }
  let(:rating) { 96 }
  let(:position) { 'CF' }

  describe '#one_name?' do
    subject(:one_name?) { player.one_name? }

    context 'player has one name' do
      let(:name) { 'Hulk' }

      it { should be(true) }
    end

    context 'player has more than one name' do
      let(:name) { 'Robbie Earle' }

      it { should be(false) }
    end
  end

  describe '#last_name' do
    subject(:last_name) { player.last_name }

    context 'first name and last name' do
      let(:name) { 'Cristiano Ronaldo' }

      it { should eq('Ronaldo') }
    end

    context 'middle name' do
      let(:name) { 'Gylffi Thor Sigurdsson' }

      it { should eq('Sigurdsson') }
    end

    context 'single name' do
      let(:name) { 'Hulk' }

      it { should eq('Hulk') }
    end

    context 'van' do
      let(:name) { 'Robin van Persie' }

      it { should eq('van Persie') }
    end

    context 'van der' do
      let(:name) { 'Edwin van der Sar' }

      it { should eq('van der Sar') }
    end

    context 'de' do
      let(:name) { 'Daniele De Rossi' }

      it { should eq('De Rossi') }
    end

    context 'al' do
      let(:name) { 'Mohammed Al Sahlawi' }

      it { should eq('Al Sahlawi') }
    end

    context "o'" do
      let(:name) { "John O'Shea" }

      it { should eq("O'Shea") }
    end

    context 'von' do
      let(:name) { 'Steve von Bergen' }

      it { should eq('von Bergen') }
    end

    context 'della' do
      let(:name) { "Francesco Della Rocca" }

      it { should eq("Della Rocca") }
    end

    context 'of' do
      let(:name) { 'Jan Vennegoor of Hesselink' }

      it { should eq('Vennegoor of Hesselink') }
    end

    context 'san' do
      let(:name) { 'Mikel San José' }
      
      it { should eq('San José') }
    end

    context 'non-ASCII' do
      let(:name) { 'Zlatan Ibrahimović' }

      it { should eq('Ibrahimović') }
    end

    context 'hyphenated' do
      let(:name) { 'Ali Al-Habsi' }

      it { should eq('Al-Habsi') }
    end
  end
end
