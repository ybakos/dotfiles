function pymon
    find . -name '*.py' | entr python3 -m unittest discover
end

