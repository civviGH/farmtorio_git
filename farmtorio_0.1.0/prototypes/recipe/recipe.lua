data:extend(
    {
    {
        type = "recipe",
        name = "nourishment-lab",
        enabled = "true",
        energy_required = 15,
        ingredients =
        {
            {"wood", 1}
        },
        result = "nourishment-lab"
    },       
    
        {
        type = "recipe",
        name = "findpotatoseeds",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"raw-wood", 50}
        },
        result = "potatoseeds"
    },    
        
        {
        type = "recipe",
        name = "findwheatseeds",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"raw-wood", 50}
        },
        result = "wheatseeds"
    },    
    
    
            {
        type = "recipe",
        name = "findsunflowerseeds",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"raw-wood", 50}
        },
        result = "sunflowerseeds"
    },    
    
            {
        type = "recipe",
        name = "chopped-potato",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"potato", 1}
        },
        results = 
        {
            {type="item", name="chopped-potato", amount = 8}
        }
    },      
    
            {
        type = "recipe",
        name = "forestry",
        enabled = "true",
        energy_required = 10,
        ingredients =
        {
            {"potato", 1}
        },
        results = 
        {
            {type="item", name="forestry", amount = 1}
        }
    },   
    
        
            {
        type = "recipe",
        name = "barn",
        enabled = "true",
        energy_required = 10,
        ingredients =
        {
            {"potato", 1}
        },
        results = 
        {
            {type="item", name="barn", amount = 1}
        }
    },   
    
                {
        type = "recipe",
        name = "forestrymk2",
        enabled = "true",
        energy_required = 10,
        ingredients =
        {
            {"potato", 1},
            {"forestry", 1}
        },
        results = 
        {
            {type="item", name="forestrymk2", amount = 1}
        }
    },   
    
    
                    {
        type = "recipe",
        name = "lumbermill",
        enabled = "true",
        energy_required = 10,
        ingredients =
        {
            {"potato", 1}
        },
        results = 
        {
            {type="item", name="lumbermill", amount = 1}
        }
    },   
    
    
                        {
        type = "recipe",
        name = "potatoseeds",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"potato", 1}
        },
        results = 
        {
            {type="item", name="potatoseeds", amount = 1}
        }
    },   
    
                            {
        type = "recipe",
        name = "sunflowerseeds",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"sunflower", 1}
        },
        results = 
        {
            {type="item", name="sunflowerseeds", amount = 4}
        }
    },  
    
    
                                {
        type = "recipe",
        name = "wheatseedsseeds",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"wheat", 1}
        },
        results = 
        {
            {type="item", name="wheatseeds", amount = 3}
        }
    },  
    
    
                                    {
        type = "recipe",
        name = "hay",
        category = "advanced-crafting",
        enabled = "true",
        energy_required = 0.5,
        ingredients =
        {
            {"wheat", 2}
        },
        results = 
        {
            {type="item", name="hay", amount = 1}
        }
    },  
    
                                {
        type = "recipe",
        name = "teleport-pill",
        enabled = "false",
        energy_required = 60,
        ingredients =
        {
            {"sunflower", 1}
        },
        results = 
        {
            {type="item", name="teleport-pill", amount = 1}
        }
    },  
    
        {
        type = "recipe",
        name = "touchofsalt",
        enabled = "true",
        energy_required = 1,
        ingredients =
        {
            {"salt", 1}
        },
        results = 
        {
            {type="item", name="touchofsalt", amount = 5}
        }
    },  
    }
)