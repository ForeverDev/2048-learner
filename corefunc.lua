function G.LOADFILE(path)
  return G.FILESYSTEM.load(path)()
end