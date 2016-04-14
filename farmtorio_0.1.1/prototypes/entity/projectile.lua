data:extend({
{
    type = "projectile",
    name = "pumpkingrenade",
    flags = {"not-on-map"},
    acceleration = 0.01,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
			{
			type = "create-entity",
			entity_name = "explosion"
			},
			{
			type = "nested-result",
			action = 
				{
					type = "area",
					perimeter = 4,
					action_delivery = 
					{
						type = "instant",
						target_effects =
						{
							{
								type = "damage",
								damage = {amount = 120, type = "explosion"}
							},
							{
								type = "create-entity",
								entity_name = "fire-carpet"
							}
						}
					}
				}
		  
            }
        }
	  }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
},
  
})