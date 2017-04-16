return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.17.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 10,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "tiles.png",
      imagewidth = 64,
      imageheight = 128,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "grass",
          tile = 17,
          properties = {}
        },
        {
          name = "dirt",
          tile = 16,
          properties = {}
        }
      },
      tilecount = 32,
      tiles = {
        {
          id = 16,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 17,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 18,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 19,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 22,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 23,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 24,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 25,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 26,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 27,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 28,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 29,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 30,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 31,
          terrain = { 1, 1, 0, 0 }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "base",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        18, 18, 18, 18, 18, 18, 18, 18, 18, 18,
        18, 19, 28, 28, 20, 18, 18, 18, 18, 18,
        18, 27, 17, 17, 31, 18, 19, 28, 20, 18,
        18, 27, 17, 17, 26, 28, 25, 17, 31, 18,
        18, 27, 17, 17, 17, 17, 17, 17, 31, 18,
        18, 23, 29, 17, 17, 17, 17, 30, 24, 18,
        18, 18, 23, 32, 32, 29, 17, 31, 18, 18,
        18, 18, 19, 28, 28, 25, 17, 26, 20, 18,
        18, 18, 27, 17, 17, 17, 17, 17, 31, 18,
        18, 18, 23, 32, 32, 32, 32, 32, 24, 18
      }
    },
    {
      type = "tilelayer",
      name = "trees",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "fruit",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
