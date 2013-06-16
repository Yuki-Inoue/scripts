#!/usr/bin/ruby

# get lines of image urls,
# download them by renaming them
# and putting serialized name

$c = 0
$dst = "."

def recurse(file)
  if File.directory? file
    Dir.foreach( file ) { |child|
      next if /^\..*$/ =~ child
      recurse (file + "/" + child)
    }
    Dir.rmdir( file ) rescue ""
  else
    renameto = $dst + "/" + $c.to_s + File::extname( file )
    File::rename( file, renameto)
    # p ("rename " + file + " " + renameto)
    $c = $c + 1
  end
end

recurse ARGV[0]
