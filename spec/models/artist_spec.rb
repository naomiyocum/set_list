require 'rails_helper'

RSpec.describe Artist, type: :model do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: 'Purple Rain', length: 343, play_count: 34343)
        @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 343, play_count: 6789)
        @another = @prince.songs.create!(title: 'Another Prince Song', length: 2, play_count: 6789)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length).to eq(229.33)
      end
    end
  end
end