#!/opt/local/bin/ruby1.9

# get lines of image urls,
# download them by renaming them
# and putting serialized name

i = 0
while gets
  url = $_.chomp
  p url
  `wget -O #{sprintf("%03d",i)}#{File.extname(url)} #{url}`
  i = i+1
end
