
function spawner_idle_animation(variation, tint)
return
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/spawner/spawner-idle.png",
        line_length = 8,
        width = 243,
        height = 181,
        frame_count = 8,
        animation_speed = 0.18,
        direction_count = 1,
        run_mode = "forward-then-backward",
        shift = {0.140625 - 0.65, -0.234375},
        y = variation * 181
      },
      {
        filename = "__base__/graphics/entity/spawner/spawner-idle-mask.png",
        width = 166,
        height = 148,
        frame_count = 8,
        animation_speed = 0.18,
        run_mode = "forward-then-backward",
        shift = {-0.34375 - 0.65, -0.375},
        line_length = 8,
        tint = tint,
        y = variation * 148
      }
    }
  }
end

function spawner_die_animation(variation, tint)
return
  {
    layers =
    {
      {
        width = 255,
        height = 184,
        frame_count = 20,
        direction_count = 1,
        shift = {-0.015625 - 0.65, -0.28125},
        stripes =
        {
         {
          filename = "__base__/graphics/entity/spawner/spawner-die-01.png",
          width_in_frames = 7,
          height_in_frames = 4,
          y = variation * 184
         },
         {
          filename = "__base__/graphics/entity/spawner/spawner-die-02.png",
          width_in_frames = 7,
          height_in_frames = 4,
          y = variation * 184
         },
         {
          filename = "__base__/graphics/entity/spawner/spawner-die-03.png",
          width_in_frames = 6,
          height_in_frames = 4,
          y = variation * 184
         }
        }
      },
      {
        width = 166,
        height = 148,
        frame_count = 20,
        direction_count = 1,
        shift = {-0.34375 - 0.65, -0.375},
        tint = tint,
        stripes =
        {
         {
          filename = "__base__/graphics/entity/spawner/spawner-die-mask-01.png",
          width_in_frames = 10,
          height_in_frames = 4,
          y = variation * 148
         },
         {
          filename = "__base__/graphics/entity/spawner/spawner-die-mask-02.png",
          width_in_frames = 10,
          height_in_frames = 4,
          y = variation * 148
         }
        }
      }
    }
  }
end

function biterrunanimation(scale, tint1, tint2)
  return
  {
    layers=
    {
      {
        width = 169,
        height = 114,
        frame_count = 16,
        shift = {scale * 0.714844, scale * -0.246094},
        direction_count = 16,
        scale = scale,
        stripes =
        {
         {
          filename = "__base__/graphics/entity/biter/biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16,
         },
         {
          filename = "__base__/graphics/entity/biter/biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16,
         }
        }
      },

      {
        width = 105,
        filename = "__base__/graphics/entity/biter/biter-run-mask1.png",
        height = 81,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.867188},
        scale = scale,
        tint = tint1
      },

      {
        filename = "__base__/graphics/entity/biter/biter-run-mask2.png",
        line_length = 16,
        width = 95,
        height = 81,
        frame_count = 16,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.855469},
        scale = scale,
        tint = tint2
      }
    }
  }
end

function biterattackanimation(scale, tint1, tint2)
  return
  {
    layers=
    {
      {
        width = 279,
        height = 184,
        frame_count = 11,
        direction_count = 16,
        shift = {scale * 1.74609, scale * -0.644531},
        animation_speed = 0.3,
        scale = scale,
        stripes =
        {
         {
          filename = "__base__/graphics/entity/biter/biter-attack-1.png",
          width_in_frames = 6,
          height_in_frames = 8,
         },
         {
          filename = "__base__/graphics/entity/biter/biter-attack-2.png",
          width_in_frames = 5,
          height_in_frames = 8,
         },
         {
          filename = "__base__/graphics/entity/biter/biter-attack-3.png",
          width_in_frames = 6,
          height_in_frames = 8,
         },
         {
          filename = "__base__/graphics/entity/biter/biter-attack-4.png",
          width_in_frames = 5,
          height_in_frames = 8,
         }
        }
      },

      {
        filename = "__base__/graphics/entity/biter/biter-attack-mask1.png",
        width = 125,
        height = 108,
        frame_count = 11,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -1.11328},
        scale = scale,
        tint = tint1,
      },

      {
        filename = "__base__/graphics/entity/biter/biter-attack-mask2.png",
        width = 114,
        height = 100,
        frame_count = 11,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -1.06641},
        scale = scale,
        tint = tint2
      }
    }
  }
end

function biterdieanimation(scale, tint1, tint2)
  return
  {
    layers=
    {
      {
        width = 190,
        height = 129,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.621094, scale * -0.1875},
        scale = scale,
        stripes =
        {
          {
            filename = "__base__/graphics/entity/biter/biter-die-1.png",
            width_in_frames = 9,
            height_in_frames = 8,
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-2.png",
            width_in_frames = 8,
            height_in_frames = 8,
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-3.png",
            width_in_frames = 9,
            height_in_frames = 8,
          },
          {
            filename = "__base__/graphics/entity/biter/biter-die-4.png",
            width_in_frames = 8,
            height_in_frames = 8,
          }
        }
      },

      {
        filename = "__base__/graphics/entity/biter/biter-die-mask1.png",
        width = 120,
        height = 109,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.574219},
        scale = scale,
        tint = tint1
      },

      {
        filename = "__base__/graphics/entity/biter/biter-die-mask2.png",
        width = 115,
        height = 108,
        frame_count = 17,
        direction_count = 16,
        shift = {scale * 0.128906, scale * -0.585938},
        scale = scale,
        tint = tint2
      }
    }
  }
end

function make_biter_roars(volume)
  return
  {
    {
      filename = "__base__/sound/creatures/biter-roar-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-roar-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-roar-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-roar-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-roar-5.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-roar-6.ogg",
      volume = volume
    }
  }
end

function make_biter_dying_sounds(volume)
  return
  {
    {
      filename = "__base__/sound/creatures/biter-death-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-death-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-death-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-death-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-death-5.ogg",
      volume = volume
    }
  }
end

function make_biter_calls(volume)
  return
  {
    {
      filename = "__base__/sound/creatures/biter-call-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/biter-call-5.ogg",
      volume = volume
    }
  }
end

function make_spitter_roars(volume)
  return
  {
    {
      filename = "__base__/sound/creatures/spitter-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-5.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-6.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-7.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-8.ogg",
      volume = volume
    }
  }
end

function make_spitter_dying_sounds(volume)
  return
  {
    {
      filename = "__base__/sound/creatures/spitter-death-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-death-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-death-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-death-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/spitter-death-5.ogg",
      volume = volume
    }
  }
end

function make_worm_roars(volume)
  return
  {
    {
      filename = "__base__/sound/creatures/worm-roar-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-roar-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-roar-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-roar-4.ogg",
      volume = volume
    }
  }
end

function make_worm_dying_sounds(volume)

  return
  {
    {
      filename = "__base__/sound/creatures/worm-death-1.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-death-2.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-death-3.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-death-4.ogg",
      volume = volume
    },
    {
      filename = "__base__/sound/creatures/worm-death-5.ogg",
      volume = volume
    }
  }
end

function make_unit_melee_ammo_type(damagevalue)
  return
  {
    category = "melee",
    target_type = "entity",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = { amount = damagevalue , type = "physical"}
        }
      }
    }
  }
end

function make_cow_roars(volume)
  return
  {
    {
      filename = "__farmtorio__/sound/cow/moo1.ogg",
      volume = volume
    },
    {
      filename = "__farmtorio__/sound/cow/moo2.ogg",
      volume = volume
    },
    {
      filename = "__farmtorio__/sound/cow/moo3.ogg",
      volume = volume
    },
    {
      filename = "__farmtorio__/sound/cow/moo4.ogg",
      volume = volume
    }
  }
end

function make_cow_dying_sounds(volume)
  return
  {
    {
      filename = "__farmtorio__/sound/cow/moodie.ogg",
      volume = volume
    }
  }
end

function make_cow_calls(volume)
  return
  {
    {
      filename = "__farmtorio__/sound/cow/moo1.ogg",
      volume = volume
    },
    {
      filename = "__farmtorio__/sound/cow/moo2.ogg",
      volume = volume
    },
    {
      filename = "__farmtorio__/sound/cow/moo3.ogg",
      volume = volume
    },
    {
      filename = "__farmtorio__/sound/cow/moo4.ogg",
      volume = volume
    }
  }
end

function cowanimation(scale, tint1)
  return
  {
    layers=
    {
      {
        width = 160,
        height = 120,
        frame_count = 8,
        direction_count = 16,
        shift = {scale * 0.1, scale * 0},
        animation_speed = 0.6,
        scale = scale,
		tint = tint1,
        stripes =
        {
         {
          filename = "__farmtorio__/graphics/entity/cow/cow_move.png",
          width_in_frames = 8,
          height_in_frames = 16
         }
        }
      }
    }
  }
end
