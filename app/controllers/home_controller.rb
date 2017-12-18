class HomeController < ApplicationController
    def index
        @morrisonpartners = []
        @value = 25000
        (0..25).each do |years|
            @value = (@value+1000) * 1.16
            @morrisonpartners << [years,@value.round(2)]
        end
        @banks = []
        @value = 25000
        (0..25).each do |years|
           @value = (@value+1000) * 1.0125
            @banks<< [years,@value.round(2)]
        end    
        @etfs = []
        @value = 25000
        (0..25).each do |years|
           @value = (@value+1000) * 1.1325
            @etfs<< [years,@value.round(2)]
        end 
        @investments = [{name: 'Morrison&Partners', data: @morrisonpartners}, {name: 'Other Investment Managers', data: @etfs}, {name: 'Savings Account', data: @banks}]           
    end
end