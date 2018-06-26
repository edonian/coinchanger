require 'coin_changer'
# require 'spec_helper'

RSpec.describe Coinchanger, "dispense" do
    coin_changer = Coinchanger.new

	let(:penny) { 1 }
    let(:nickel){ 5 }
    let(:dime){10}

	it "given one cent it returns a penny" do 
		expect(coin_changer.dispense(1)).to eq [penny]  
	end

	it "given two cents it returns two pennies" do 
		expect(coin_changer.dispense(2)).to eq [penny, penny]  
	end

	it "given three cents it returns three pennies" do 
		expect(coin_changer.dispense(3)).to eq [penny, penny, penny]  
	end

	it "given five cents it returns one nickel" do 
		expect(coin_changer.dispense(5)).to eq [nickel]  
	end

	it "given six cents it returns one nickel and one penny" do 
		expect(coin_changer.dispense(6)).to eq [nickel, penny]  
	end
		it "given seven cents it returns one nickel and two pennies" do 
		expect(coin_changer.dispense(7)).to eq [nickel, penny, penny]  
    end

    it "given seven cents it returns one nickel and three pennies" do 
		expect(coin_changer.dispense(8)).to eq [nickel, penny, penny, penny]  
    end

    it "given seven cents it returns one nickel and four pennies" do 
		expect(coin_changer.dispense(9)).to eq [nickel, penny, penny, penny, penny]  
    end

    it "given seven cents it returns one nickel and four pennies" do 
		expect(coin_changer.dispense(9)).to eq [nickel, penny, penny, penny, penny]  
    end

    it "given seven cents it returns one dime" do 
		expect(coin_changer.dispense(10)).to eq [dime]  
    end



end
# dime = 10
# nickel = 5
# penny = 1
# [dime, nickel, penny, penny]