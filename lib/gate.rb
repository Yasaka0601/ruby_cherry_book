class Gate
  # 定数。:umeda という記法はシンボル（オブジェクト同じで高速のやつ）
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

private

  def calc_fare(ticket)
    # indexメソッドは配列の中から、引数に合致する要素の添え字を取得する
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    # 配列は oオリジンなので　-1 をする
    FARES[distance - 1]
  end
end