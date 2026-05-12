class Ticket
  # ゲッター外部から fare と stamped_at を呼び出す。
  attr_reader :fare, :stamped_at

  # 初期値 インスタンス（Ticket.new）を作成した時に呼び出される。
  def initialize(fare)
    @fare = fare
  end

  # このメソッドには駅名を渡す。
  def stamp(name)
    @stamped_at = name
  end
end