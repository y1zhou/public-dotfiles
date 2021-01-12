function ll --wraps=ls
  lsd -trhlF --group-dirs first $argv
end
