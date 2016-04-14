data:extend({
  {
    type = "item",
    name = "pumpkin-turret",
    icon = "__farmtorio__/graphics/icons/pumpkin-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "buildings-subgroup",
    order = "g",
	place_result = "pumpkin-turret",
    stack_size = 50
  },
  
  {
    type = "ammo",
    name = "pumpkingrenade",
    icon = "__base__/graphics/icons/rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "pumpkingrenade",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    subgroup = "ammo-subgroup",
    order = "a",
    stack_size = 100
  },
})