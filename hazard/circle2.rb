def setup
  size 500, 500
  background 51
  @scale_by = 1
end

def draw
  scale @scale_by
  #push_matrix
  #translate 250*(1-@scale_by), -250*(1-@scale_by)
  ellipse 250, 250, 250, 250
  @scale_by -= 0.01
  #pop_matrix
  delay(500)
end