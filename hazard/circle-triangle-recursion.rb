class Circle
  def initialize(x, y, radius)
    @x = x
    @y = y
    @radius = radius
  end
  
  def draw(pointcount)
    no_fill
    angle = radians(pointcount)
    # x = @x + (cos(angle) * @radius)
    # y = @y + (sin(angle) * @radius)
    arc @x, @y, @radius, @radius, 0, angle
    if pointcount % 60 == 0
      start_angle = radians(pointcount - 120)
      end_angle = radians(pointcount)
      line @x + (cos(start_angle) * @radius/2), @y + (sin(start_angle) * @radius/2),
           @x + (cos(end_angle) * @radius/2), @y + (sin(end_angle) * @radius/2)
    end
  end
  
  def finish
    # I wanted to fill in all the objects, but the fill method does not work from here.
    # noStroke
    # fill(0, 0, 70, 70) Why does fill not work when called from here?
    # ellipse(@x, @y, @radius, @radius)
  end
  
  def divide
    [0,60,120,180,240,300].map do |degrees|
      angle = radians(degrees)
      radius = @radius * 1.0 / 3.0
      x = @x + (cos(angle) * @radius/2) - (cos(angle) * radius/2)
      y = @y + (sin(angle) * @radius/2) - (sin(angle) * radius/2)
      Circle.new(x, y, radius)
    end
  end
end

def setup
  @w = 750
  @h = 750
  @r = 30
  @g = 50
  @b = 100
  @cx = 400
  @cy = 400
  size 800, 800
  @transparency = 255
  background 255
  frame_rate 33
  @deg = 0

  # smooth # It turns out that smooth makes the lines thicker.

  @circles = [Circle.new(@cx, @cy, @w)]
end

def draw
  # fill 255, 200, 0, @transparency
  
  @circles.each{|circle| circle.draw(@deg)}
  @deg += 1
  if @deg > 360
    @deg = 0
    @circles.each(&:finish)
    @circles = @circles.map(&:divide).flatten
  end
end

def mouse_pressed
  no_loop
end

def mouse_released
  loop
end