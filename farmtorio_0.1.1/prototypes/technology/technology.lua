data:extend({
    {
    type = "technology",
    name = "craftingspeed1",
    icon = "__farmtorio__/graphics/technology/craftingspeed1.png",
    prerequisites = {},
    effects =
    {
    },
    unit =
    {
      count = 1,
      ingredients = {{"pommes", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-b-a"
  },
    
    
        {
    type = "technology",
    name = "craftingspeed2",
    icon = "__farmtorio__/graphics/technology/craftingspeed2.png",
    prerequisites = {"craftingspeed1"},
    effects =
    {
    },
    unit =
    {
      count = 3,
      ingredients = {{"pommes", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-b-b"
  },    
    
    
        {
    type = "technology",
    name = "craftingspeed3",
    icon = "__farmtorio__/graphics/technology/craftingspeed3.png",
    prerequisites = {"craftingspeed2"},
    effects =
    {
    },
    unit =
    {
      count = 3,
      ingredients = {{"pommes", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-b-c"
  },
  
      
    
        {
    type = "technology",
    name = "craftingspeed4",
    icon = "__farmtorio__/graphics/technology/craftingspeed4.png",
    prerequisites = {"craftingspeed3"},
    effects =
    {
    },
    unit =
    {
      count = 3,
      ingredients = {{"pommes", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-b-d"
  },
  
      
    
        {
    type = "technology",
    name = "craftingspeed5",
    icon = "__farmtorio__/graphics/technology/craftingspeed5.png",
    prerequisites = {"craftingspeed4"},
    effects =
    {
    },
    unit =
    {
      count = 3,
      ingredients = {{"pommes", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-b-e"
  },       
  
  
   {
    type = "technology",
    name = "teleporttech",
    icon = "__farmtorio__/graphics/technology/teleporttech.png",
    prerequisites = {"craftingspeed5"},
    effects =
    {      
      {
        type = "unlock-recipe",
        recipe = "teleport-pill"
      }
    },
    unit =
    {
      count = 1,
      ingredients = {{"pommes", 1}},
      time = 2
    },
    order = "e-c-a"
  },
  
     {
    type = "technology",
    name = "ironbushtech",
    icon = "__farmtorio__/graphics/technology/ironbushtech.png",
    prerequisites = {},
    effects =
    {      
      {
        type = "unlock-recipe",
        recipe = "iron-ore-bush"
      }
    },
    unit =
    {
      count = 1,
      ingredients = {{"pommes", 1}},
      time = 2
    },
    order = "e-d-a"
  },
})