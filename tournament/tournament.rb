class Tournament
    TEMPLATE = "%-31s| %2s | %2s | %2s | %2s | %2s\n"

  def self.tally(data)
    return header if (!data || data.strip.empty?)
    @@stats = Hash.new { |h, k| h[k] = [] }
    process_input(data)
    @@rows = add_rows
    @@rows.unshift(header)
    @@rows.join
  end

  def self.header
    format(TEMPLATE, "Team", "MP", "W", "D", "L", "P")
  end

  def self.process_input(input)
    lines = input.split("\n").map { |line| line.split(";") }
    lines.map { |match| process_match(match) }
  end

  def self.process_match(match)
    result = match[2].strip
    @@stats[match[0]] << result
    if result == "win"
      @@stats[match[1]] << "loss"
    elsif result == "loss"
      @@stats[match[1]] << "win"
    else
      @@stats[match[1]] << "draw"
    end
  end

  def self.add_rows
    rows = []
    @@stats.each_pair do |team, results|
      won, lost, draw = results.count("win"),
                        results.count("loss"),
                        results.count("draw")
      matches, pts = [won, lost, draw].sum, [won * 3, draw].sum
      rows << format(TEMPLATE, team, matches, won, draw, lost, pts)
    end
    rows = rsort(rows)
  end

  def self.rsort(data)
    data.sort! { |a, b| a[0] <=> b[0] }
    data.sort! do |a, b|
      b.scan(/\d/).last.to_i <=> a.scan(/\d/).last.to_i
    end
    data
  end

  private_class_method :header, :process_input, :process_match, :add_rows, :rsort
end
