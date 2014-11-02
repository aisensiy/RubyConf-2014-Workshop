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

  it 'should eval 1+2 to 3' do
    Calc.eval('1+2').should be 3
  end

  it 'should eval 1-1 to 0' do
    Calc.eval('1-1').should be 0
  end

  it 'should eval 2*1 to 2' do
    Calc.eval('2*1').should be 2
  end

  it 'should eval 4/2 to 2' do
    Calc.eval('4/2').should be 2
  end

  it 'should eval 4/3 to 1' do
    Calc.eval('4/3').should be 1
  end

  it 'should eval 11+9 to 20' do
    Calc.eval('11+9').should be 20
  end

  it 'should eval 30-11 to 19' do
    Calc.eval('30-11').should be 19
  end

  it 'should eval 11*12 to 132' do
    Calc.eval('11*12').should be 132
  end

  it 'should eval 15/3 to 5' do
    Calc.eval('15/3').should be 5
  end

  it 'should eval 15/6 to 2' do
    Calc.eval('15/6').should be 2
  end

  it 'should eval 3-5 to 0' do
    expect(Calc.eval('3-5')).to be_eql 0
  end

  it 'should eval 4-10 to 0' do
    expect(Calc.eval('4-10')).to be_eql 0
  end

  it 'should eval 1+1+1 to 3' do
    expect(Calc.eval('1+1+1')).to be_eql 3
  end

  it 'should eval 3*2*2 to 12' do
    expect(Calc.eval('3*2*2')).to be_eql 12
  end

  it 'should eval 1-1+1 to 1' do
    expect(Calc.eval('1-1+1')).to eql 1
  end

  it 'should eval 1-1+1+3 to 4' do
    expect(Calc.eval('1-1+1+3')).to eql 4
  end
end
