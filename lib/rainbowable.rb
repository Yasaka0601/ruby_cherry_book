module Rainbowable
    # def rainbow
    #     # 1.to_sメソッドを使って、自分自身の文字列表現を取得
    #     str = self.to_s

    #     count = 0 # ループカウンタ
    #     colored_chars = [] # 色をつけた文字を格納する配列

    #     str.each_char do |char|
    #         color = 31 + count % 6 #なんで文字色を31から36まで切り替えて３１に戻す？

    #         colored_chars << "\e[#{color}m#{char}"

    #         count += 1
    #     end

    #     ret = colored_chars.join

    #     ret + "\e[0m"
    # end
        ########リファクタ
        # def rainbow
        #     colored_chars = [] # 色をつけた文字を格納する配列
        #     to_s.each_char.with_index do |char, count|
        #         color = 31 + count % 6
        #         colored_chars << "\e[#{color}m#{char}"
        #     end

        #     colored_chars.join + "\e[0m"
        # end

        ##### さらにリファクタ
        def rainbow
            to_s.each_char.map.with_index do |char, count|
                color = 31 + count % 6
                "\e[#{color}m#{char}"
            end.join + "\e[0m"
        end
end
