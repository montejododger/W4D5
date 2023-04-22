class TowerHanoi

    attr_reader :size, :first_tower, :second_tower, :third_tower

    attr_accessor :board
    def initialize
        @first_tower = %w[disk disk disk disk]
        @size = @first_tower.length
        @second_tower = []
        @third_tower = []
        @board = [first_tower, second_tower, third_tower]
    end 

    def user_prompt
        puts "enter start tower and end tower in 0'2 format"
        arr = gets.chomp.map(&:to_i)
    end

    def move(arr)
        start_tower, end_tower = arr
        disk = @board[start_tower].pop 
        @board[end_tower].push(disk)
        @board
    end 
    
    def won?
        @board[2].length == @size
    end 
end 