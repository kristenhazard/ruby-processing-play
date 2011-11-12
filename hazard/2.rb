# circle

def setup
  size 500, 500
  background(51)
  color_mode RGB, 1.0
  frame_rate 30
  fill 0.8, 0.6
  smooth
end

def draw
  ellipse(250, 250, 250, 250)
end