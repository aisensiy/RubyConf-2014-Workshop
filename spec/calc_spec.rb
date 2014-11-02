require 'rspec'
require 'calc'

describe 'calc' do

  it 'should eval 1 to 1' do
    Calc.eval('1').should be 1
  end

  it 'should eval 2 to 2' do
    Calc.eval('2').should be 2
  end

  it 'should eval 11 to 11' do
    Calc.eval('11').should be 11
  end

  it 'should eval 22 to 22' do
    Calc.eval('22').should be 22
  end
end
