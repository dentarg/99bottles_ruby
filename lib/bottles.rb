class Bottles
  def bottles_str(bottles, capitalize = true)
    no_str = capitalize ? "No" : "no"
    return "#{no_str} more bottles" if bottles == 0
    return "1 bottle" if bottles == 1

    "#{bottles} bottles"
  end

  def down_str(bottles)
    return "it" if bottles == 1

    "one"
  end

  def after_down_str(bottles)
    return bottles_str(bottles) if bottles > 0

    "no more bottles"
  end

  def verse(bottles)
    "#{bottles_str(bottles)} of beer on the wall, " +
    "#{bottles_str(bottles, false)} of beer.\n" +
    if bottles > 0
      "Take #{down_str(bottles)} down and pass it around, " +
      "#{after_down_str(bottles - 1)} of beer on the wall.\n"
    else
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    end
  end
end
