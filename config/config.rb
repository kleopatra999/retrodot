module Config
  extend Configerator

  # required :something
  # optional :anotherthing
  # override :port, 3000, int

  override :frontend_host, "retro.dev", string
end
