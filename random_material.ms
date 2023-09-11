(
  ma = #()
  for m = 1 to 5 do
  (
    m = standard()
    m.diffuse = color (random 0 255) (random 0 255) (random 0 255)
    append ma m
  )
  for o in $ do
  (
    o.material = ma[random 1 5]
  )
)
