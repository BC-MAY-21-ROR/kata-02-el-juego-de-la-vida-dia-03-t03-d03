require 'rspec'
require_relative './grid.rb'

# bundle exec rspec grid_rspec.rb

describe Grid do
  let(:grid) { Grid.new }

    context 'grid Test' do
        it 'Column verification' do
            expect(grid.column).to eq 10
        end
        it 'Row Verification' do
            expect(grid.row).to eq 6
        end
        it 'Cells Space Verification' do
            number = grid.column * grid.row
            result = grid.matriz.size * grid.matriz[0].size
            expect(number).to eq result
        end
        it 'New Generation Comparison' do
            gen = grid.next_generation(grid.matriz)
            expect(gen).to eq grid.matriz
        end
    end
end