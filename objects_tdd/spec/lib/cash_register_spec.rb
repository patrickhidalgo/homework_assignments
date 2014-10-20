require './lib/cash_register'
require 'rspec'

describe CashRegister do
  before do
    @cashregister = CashRegister.new
  end

  it 'should be a cash register' do
    expect(subject).to be_a(CashRegister)
  end

  it 'should initialize total to zero' do
    expect(@cashregister.total).to eq(0)
  end

  describe 'purchase' do
    it 'should add purchases to total when amount > 0' do
      @cashregister.purchase(5)
      expect(@cashregister.total).to eq(5)
    end

    it 'should not add to the total when amount = 0' do
      @cashregister.purchase(0)
      expect(@cashregister.total).to eq(0)
    end
  end

  describe 'payment' do
    context 'when the amount is > 0' do
      context 'when amount is < total' do
        it 'should subtract payments from total' do
          @cashregister.purchase(5)
          @cashregister.pay(4)
          expect(@cashregister.total).to eq(1)
        end
      end

      context 'when amount = total' do
        it 'should subtract payment from total, total = 0' do
          @cashregister.purchase(5)
          @cashregister.pay(5)
          expect(@cashregister.total).to eq(0.0)
        end
      end

      context 'when amount > total' do
        it 'should subtract payment from total, total = 0, give change' do
          @cashregister.purchase(5)
          @cashregister.pay(6)
          expect(@cashregister.total).to eq(1)
        end
      end
    end

    context 'when amount = 0' do
      it 'should not change the total' do
        @cashregister.purchase(5)
        @cashregister.pay(0)
        expect(@cashregister.total).to eq(5)
      end
    end
  end
end
