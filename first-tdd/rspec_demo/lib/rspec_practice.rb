class Array
    def my_uniq
        unique = []
        self.each {|ele| unique << ele if !unique.include?(ele)}
        unique
    end 

    def two_sum
        pairs = []
        (0...length - 1).each do |i|
            (i + 1...length).each do |j|
                sum = self[i] + self[j]
                pairs << [i, j] if sum == 0
            end
        end
        pairs
    end 

    def my_transpose
        (0...length).map do |i|
            self.map {|arr| arr[i]}
        end 
    end 

    def stock_picker
        pairs = []
        biggest_diff = 0
        (0...length - 1).each do |i|
            (i + 1...length).each do |j|
                diff = self[j] - self[i]
                    if diff > biggest_diff
                        biggest_diff = diff
                        pairs = [i, j]
                    end
                end
            end
        pairs
    end 

    
end 