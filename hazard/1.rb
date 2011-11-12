# Triangles gone wild

def setup
  color_mode RGB, 1.0
  frame_rate 30
  fill 0.8, 0.6
  smooth
end

def draw
  triangle(rand(width), rand(height), rand(width), rand(height), rand(width), rand(height))
end