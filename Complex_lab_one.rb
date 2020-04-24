# -*- coding: utf-8 -*-
# ruby
class ComplexNum
    attr_reader:real,:imag,:history
    @@add_counter=1
    @@mul_counter=1
    @@history=Array.new

    def initialize(real , imag)
        @real = real
        @imag = imag
    end
    def +(cn)
        
        @@history.push("Adding cal "+"#{@@add_counter}")
        @@add_counter += 1
        return ComplexNum.new(real + cn.real,
                       imag + cn.imag)
    end
    def *(cn)
        @@history.push("multiply cal "+"#{@@add_counter}")
        @@mul_counter += 1
        return ComplexNum.new(real*cn.real,imag*cn.imag)
    end

   
    def self.bulk_add(cns)
        
        @@history.push("Adding arr "+"#{@@add_counter}")
        @@add_counter += 1
    
        sum=ComplexNum.new(0,0)
     
        cns.each do |cn| 
            sum += cn
        end

        return sum
    end

    def self.bulk_multiply(cns)
     
        @@history.push("multiply arr "+"#{@@add_counter}")
        @@mul_counter += 1
    
        mul=ComplexNum.new(1,1)
        cns.each do |cn|
            mul *= cn
        end
      
        return mul
    end

    def self.get_stats
        return @@history
    end
end

cn1=ComplexNum.new(7,5)
cn2=ComplexNum.new(9,2)
cn3=ComplexNum.new(30,12)

#adding three numbers
result= cn1 + cn2 + cn3
puts "#{result.real}"+" + "+"#{result.imag}"+"i"

# multiply
result= cn1 * cn2 * cn3
puts "#{result.real}"+" + "+"#{result.imag}"+"i"

#array sum
cns=[cn1,cn2]
result=ComplexNum.bulk_add(cns)
puts "#{result.real}" + " + "+"#{result.imag}"

#array multiply
result=ComplexNum.bulk_multiply(cns)
puts "#{result.real}" + " + "+"#{result.imag}"

# history of calculator
allOps=ComplexNum.get_stats
puts "#{allOps}"
