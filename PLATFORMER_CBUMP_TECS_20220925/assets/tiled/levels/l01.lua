return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.8.6",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 60,
  height = 34,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 10,
  nextobjectid = 44,
  properties = {},
  tilesets = {
    {
      name = "images",
      firstgid = 1,
      tilewidth = 384,
      tileheight = 238,
      spacing = 0,
      margin = 0,
      columns = 0,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 1,
        height = 1
      },
      properties = {},
      wangsets = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          image = "deco/cartoon_car_0029.png",
          width = 384,
          height = 238
        },
        {
          id = 1,
          image = "deco/cartoon_car_0040.png",
          width = 384,
          height = 238
        }
      }
    }
  },
  layers = {
    {
      type = "group",
      id = 6,
      name = "DECO",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      layers = {
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 7,
          name = "images",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 24,
              name = "",
              type = "",
              shape = "rectangle",
              x = 720,
              y = 1024,
              width = 154.891,
              height = 96,
              rotation = 0,
              gid = 1,
              visible = true,
              properties = {}
            },
            {
              id = 25,
              name = "",
              type = "",
              shape = "rectangle",
              x = 1200,
              y = 669,
              width = 141.983,
              height = 88,
              rotation = 15,
              gid = 2,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 8,
          name = "shapes",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 7,
              name = "",
              type = "",
              shape = "ellipse",
              x = 512,
              y = 832,
              width = 192,
              height = 192,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 9,
              name = "",
              type = "",
              shape = "rectangle",
              x = 384,
              y = 896,
              width = 64,
              height = 128,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 10,
              name = "",
              type = "",
              shape = "rectangle",
              x = 416,
              y = 864,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 11,
              name = "",
              type = "",
              shape = "rectangle",
              x = 480,
              y = 960,
              width = 32,
              height = 64,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 12,
              name = "",
              type = "",
              shape = "rectangle",
              x = 680,
              y = 992,
              width = 24,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 13,
              name = "",
              type = "",
              shape = "ellipse",
              x = 296,
              y = 432,
              width = 80,
              height = 80,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 14,
              name = "",
              type = "",
              shape = "ellipse",
              x = 640,
              y = 496,
              width = 120,
              height = 120,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 15,
              name = "",
              type = "",
              shape = "ellipse",
              x = 584,
              y = 104,
              width = 120,
              height = 120,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 16,
              name = "",
              type = "",
              shape = "polygon",
              x = 376,
              y = 616,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 192, y = -200 },
                { x = -144, y = -368 },
                { x = -136, y = -728 },
                { x = -88, y = -392 },
                { x = 240, y = -216 }
              },
              properties = {}
            },
            {
              id = 17,
              name = "",
              type = "",
              shape = "polygon",
              x = 1296,
              y = 1024,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 448, y = -193.407 },
                { x = -336, y = -355.868 },
                { x = -317.333, y = -704 },
                { x = -205.333, y = -379.077 },
                { x = 560, y = -208.879 }
              },
              properties = {}
            },
            {
              id = 18,
              name = "",
              type = "",
              shape = "ellipse",
              x = 920,
              y = 320,
              width = 120,
              height = 352,
              rotation = 0,
              visible = true,
              properties = {}
            }
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "bg",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1024,
          width = 1920,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 64,
          width = 64,
          height = 960,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1856,
          y = 64,
          width = 64,
          height = 960,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 1920,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 896,
          width = 128,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 752,
          y = 832,
          width = 208,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 728,
          width = 640,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1760,
          y = 832,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1584,
          y = 928,
          width = 96,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "actors",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 5,
          name = "player1",
          type = "",
          shape = "polygon",
          x = 224,
          y = 408,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -48 },
            { x = -32, y = 0 },
            { x = 0, y = 48 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 6,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1392,
          y = 688,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 26,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1256,
          y = 936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 27,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 904,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 28,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 344,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 29,
          name = "hulk",
          type = "",
          shape = "polygon",
          x = 856,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 30,
          name = "hulk",
          type = "",
          shape = "polygon",
          x = 1616,
          y = 992,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 31,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1792,
          y = 760,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 32,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1032,
          y = 656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 33,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1152,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 34,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1264,
          y = 648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 35,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1096,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 36,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 608,
          y = 824,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 37,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 728,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 38,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1536,
          y = 664,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 39,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1800,
          y = 936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 40,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1624,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 41,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 1488,
          y = 912,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 42,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 136,
          y = 960,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        },
        {
          id = 43,
          name = "nmeA",
          type = "",
          shape = "polygon",
          x = 504,
          y = 904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 32, y = 0 },
            { x = 0, y = -32 },
            { x = -32, y = 0 },
            { x = 0, y = 32 },
            { x = 32, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "fg",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    }
  }
}