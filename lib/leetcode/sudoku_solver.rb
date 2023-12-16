module Leetcode
  # https://leetcode.com/problems/sudoku-solver/
  class SudokuSolver
    # @return [Integer]
    ROWS = COLS = 9

    # @return [Array<Integer>]
    NUMS = [1, 2, 3, 4, 5, 6, 7, 8, 9].freeze

    def execute(board)
      freeze_already_on_board(board)

      until complete?(board)
        fill_in_rows(board)
        check_columns(board)
      end

      board.tap do |itself|
        itself.each do |row|
          puts row.join("")
        end
      end
    end

    def fill_in_rows(board)
      board.each_with_index do |row, row_index|
        row.each_with_index do |item, col_index|
          next unless item == "."

          sample = NUMS.sample

          board[row_index][col_index] = sample.to_s unless row.include?(sample.to_s)
        end
      end

      board
    end

    def check_columns(board)
      1.upto(ROWS).each do |row_index|
        column_nums = 1.upto(COLS).map do |col_index|
           board[col_index - 1][row_index - 1]
        end

        if NUMS.all? {|element| column_nums.include?(element.to_s) }
          next
        else
          target = NUMS.sample - 1
          board[target][row_index-1] = "." unless board[target][row_index-1].frozen?
        end
      end
    end

    def complete?(board)
      board.all? do |rows|
        rows.all? do |item|
          item != "."
        end
      end && cols_in_order?(board)
    end

    def cols_in_order?(board)
      1.upto(ROWS).all? do |row_index|
        column_nums = 1.upto(COLS).map do |col_index|
          board[col_index - 1][row_index - 1]
        end


        if NUMS.all? { |element| column_nums.include?(element.to_s) }
          true
        else
          false
        end
      end
    end

    def freeze_already_on_board(board)
      board.each_with_index do |row, row_index|
        row.each_with_index do |item, item_index|
          board[row_index][item_index].freeze if board[row_index][item_index] != "."
        end
      end
    end
  end
end