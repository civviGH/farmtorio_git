require("prototypes.entity.cattle.functions")

cowscale = 1
cow_tint1 = {r=1, g=1, b=1, a=1}
cow_tint2 = {r=1, g=0.63, b=0, a=0.4}

data:extend({

	{
	type = "unit",
    name = "cow",
    icon = "__base__/graphics/icons/small-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 3,
    order = "d-b-a",
    subgroup="enemies",
    healing_per_tick = 0.01,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
    attack_parameters =
    {
      type = "projectile",
      range = 0.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(1),
      sound = make_cow_roars(1),
      --animation = biterattackanimation(cowscale, cow_tint1, cow_tint2)
	  animation = cowanimation(cowscale, cow_tint1)
    },
    vision_distance = 3,
    movement_speed = 0.1,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 200,
    distraction_cooldown = 300,
    corpse = nil,
    dying_explosion = "blood-explosion-big",
	loot =
    {
      {
        count_max = 5,
        count_min = 5,
        item = "steak",
        probability = 1
      }
    },
    dying_sound =  make_cow_dying_sounds(1),
    working_sound =  make_cow_calls(1),
    --run_animation = biterrunanimation(cowscale, cow_tint1, cow_tint2)
	run_animation = cowanimation(cowscale, cow_tint1)
	}

})