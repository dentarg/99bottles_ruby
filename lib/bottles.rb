class Bottles
  def bottles_str(bottles)
    return "1 bottle" if bottles == 1

    "#{bottles} bottles"
  end

  def verse(bottles)
    "#{bottles_str(bottles)} of beer on the wall, " +
    "#{bottles_str(bottles)} of beer.\n" +
    "Take one down and pass it around, " +
    "#{bottles_str(bottles - 1)} of beer on the wall.\n"
  end
end
