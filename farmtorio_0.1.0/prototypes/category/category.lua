data:extend({
 {
    type = "item-group",
    name = "farmtorio-group",
    order = "c-f",
    inventory_order = "a-a",
    icon = "__farmtorio__/graphics/category/farmtorio.png"
  },
  
      {
    type = "item-subgroup",
    name = "buildings-subgroup",
    group = "farmtorio-group",
    order = "a-a"
  },

        {
    type = "item-subgroup",
    name = "farmcraft-subgroup",
    group = "farmtorio-group",
    order = "b-a"
  },
  
        {
    type = "item-subgroup",
    name = "plants-subgroup",
    group = "farmtorio-group",
    order = "c-a"
  },
  
        {
    type = "item-subgroup",
    name = "seeds-subgroup",
    group = "farmtorio-group",
    order = "d-a"
  },
  
  { 
      type = "recipe-category",
      name = "farmcraft"
  },
  
  { 
      type = "recipe-category",
      name = "windmill"
  },
  
}
)
