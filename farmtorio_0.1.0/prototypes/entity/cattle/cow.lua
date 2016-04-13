require("prototypes.entity.cattle.functions")

cowscale = 0.5
cow_tint1 = {r=0.56, g=0.46, b=0.42, a=0.65}
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
      sound = make_biter_roars(0),
      animation = biterattackanimation(cowscale, cow_tint1, cow_tint2)
    },
    vision_distance = 3,
    movement_speed = 0.1,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 200,
    distraction_cooldown = 300,
    corpse = nil,
    dying_explosion = "blood-explosion-big",
    dying_sound =  make_biter_dying_sounds(0),
    working_sound =  make_biter_calls(0),
    run_animation = biterrunanimation(cowscale, cow_tint1, cow_tint2)
	}

})