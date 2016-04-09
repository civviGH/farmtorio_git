data:extend(
    {
          {
    type = "recipe",
    name = "pommes",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="fryer-fat", amount=2},
      {type="item", name="chopped-potato", amount=20}
    },
    results=
    {
      {type="item", name="pommes", amount=1}
    }
  },
  
  
            {
    type = "recipe",
    name = "salt",
    category = "crafting-with-fluid",
    energy_required = 1,
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="water", amount=2}
    },
    results=
    {
      {type="item", name="salt", amount=1}
    }
  },

  
  {
    type = "recipe",
    name = "fryer-fat processing",
    category = "chemistry",
    enabled = true,
    energy_required = 3,
    ingredients =
    {
      {type="item", name="sunflowerseeds", amount=10},
      {type="fluid", name="water", amount= 3}
    },
    results=
    {
      {type="fluid", name="fryer-fat", amount=2}
    },
    subgroup = "fluid-recipes",
    order = "d[fryer-fat processing]"
  },
  
      
        {
        type = "recipe",
        name = "cookiedough",
        category = "crafting-with-fluid",
        enabled = "true",
        energy_required = 4,
        ingredients =
        {
            {type = "item", name = "butter", amount = 2},
            {type = "item", name = "touchofsalt", amount = 1},
            {type = "item", name = "egg", amount = 2},
            {type = "item", name = "flour", amount = 4},
            --{type="item", name="sugar", amount = 2},
            {type="fluid", name="water", amount = 1}
        },
        results = 
        {
            {type="item", name="cookiedough", amount = 1}
        }
    },  
    
  
    }
)