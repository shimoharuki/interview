def fizz_buzz(n)
    #から作る

    
    #times文で繰り返し処理をする(n回)
    #if文使う
    (1..n).each do |i|
        if i % 3 == 0 && i %5 ==0
            puts "fizzbuzz!"
        elsif i %5 ==0
            puts "buzz!"
        elsif i%3==0
            puts "fizz!"
        else
            puts i
        end
    end
    # TODO: 現状は入力値をそのまま出力しています。要件に従って実装してください
  end
  
  fizz_buzz(ARGV[0].to_i)