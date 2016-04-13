data:extend({
    
    {
      type = "tile",
      name = "woodfloor",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "woodfloor"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.1,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__farmtorio__/graphics/terrain/woodfloor/woodfloor.png",
            count = 1,
            size = 1
          },
        },
        inner_corner =
        {
          picture = "__farmtorio__/graphics/terrain/woodfloor/woodfloor-inner-corner.png",
          count = 1
        },
        outer_corner =
        {
          picture = "__farmtorio__/graphics/terrain/woodfloor/woodfloor-outer-corner.png",
          count = 1
        },
        side =
        {
          picture = "__farmtorio__/graphics/terrain/woodfloor/woodfloor-side.png",
          count = 1
        },
        u_transition =
        {
          picture = "__farmtorio__/graphics/terrain/woodfloor/woodfloor-u.png",
          count = 1
        },
        o_transition =
        {
          picture = "__farmtorio__/graphics/terrain/woodfloor/woodfloor-o.png",
          count = 1
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = 0
    }
    
})