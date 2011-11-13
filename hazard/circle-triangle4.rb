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
end

def draw
  fill 255, 200, 0, @transparency
  
  # draw the circle
  no_stroke
  smooth
  radius = @h/2
  angle = radians(@deg)
  x = @cx + (cos(angle) * radius)
  y = @cy + (sin(angle) * radius)
  ellipse x, y, 6, 6
  @deg += 1
  
end

def mouse_pressed
  no_loop
end

def mouse_released
  loop
end