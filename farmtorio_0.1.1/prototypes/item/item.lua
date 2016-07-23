data:extend({
	
	{
		type = "item",
		name = "nourishment-lab",
		icon = "__farmtorio__/graphics/icons/lab.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "g[nourishment-lab]",
		place_result = "nourishment-lab",
		stack_size = 10
	},
	

	
	{
		type = "item",
		name = "pumpkin",
		icon = "__farmtorio__/graphics/icons/pumpkin.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "f",
		stack_size = 200
	},
	{
		type = "item",
		name = "pumpkinseeds",
		icon = "__farmtorio__/graphics/icons/pumpkinseeds.png",
		flags = {"goes-to-quickbar"},
		subgroup = "seeds-subgroup",
		order = "f",
		place_result = "pumpkinplant",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "chopped-potato",
		icon = "__farmtorio__/graphics/icons/chopped-potato.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "b[chopped-potato]",
		stack_size = 200
	},
	
	{
		type = "tool",
		name = "pommes",
		icon = "__farmtorio__/graphics/icons/pommes.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "science-subgroup",
		order = "b",
		stack_size = 200,
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount"
	},
	
	{
		type = "item",
		name = "forestry",
		icon = "__farmtorio__/graphics/icons/forestry.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "a[forestry]",
		place_result = "forestry",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "forestry-2",
		icon = "__farmtorio__/graphics/icons/forestry-2.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "b[forestry2]",
		place_result = "forestry-2",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "lumbermill",
		icon = "__farmtorio__/graphics/icons/lumbermill.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "c[lumbermill]",
		place_result = "lumbermill",
		stack_size = 50
	},
	

	{
		type = "item",
		name = "hay",
		icon = "__farmtorio__/graphics/icons/hay.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "l[hay]",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "teleport-pill",
		icon = "__farmtorio__/graphics/icons/pill.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "e[teleport-pill]",
		stack_size = 50
	},  
	
	{
		type = "item",
		name = "bottled-milk",
		icon = "__farmtorio__/graphics/icons/milk.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "e[milk]",
		stack_size = 200
	},   
	
	{
		type = "item",
		name = "egg",
		icon = "__farmtorio__/graphics/icons/egg-abstract.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "f[egg]",
		stack_size = 200
	},
	
	{
		type="item",
		name = "barn",
		icon = "__farmtorio__/graphics/icons/barn.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "g[barn]",
		place_result = "barn",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "salt",
		icon = "__farmtorio__/graphics/icons/salt.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "g[salt]",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "touchofsalt",
		icon = "__farmtorio__/graphics/icons/touchofsalt.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "h[touchofsalt]",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "butter",
		icon = "__farmtorio__/graphics/icons/butter.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "i[butter]",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "cookiedough",
		icon = "__farmtorio__/graphics/icons/cookiedough.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "j[cookiedough]",
		stack_size = 200
	},
	
	{
		type = "tool",
		name = "cookie",
		icon = "__farmtorio__/graphics/icons/cookie.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "science-subgroup",
		order = "c",
		stack_size = 200,    
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount"
	},
	
	{
		type = "item",
		name = "windmill",
		icon = "__farmtorio__/graphics/icons/windmill.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "e[windmill]",
		place_result = "windmill",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "genelab",
		icon = "__farmtorio__/graphics/icons/genelab.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "f[genelab]",
		place_result = "genelab",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "flour",
		icon = "__farmtorio__/graphics/icons/flour.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "m[flour]",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "woodfloor",
		icon = "__farmtorio__/graphics/terrain/woodfloor/woodfloor.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "g[woodfloor]",
		place_as_tile =
		{
			result = "woodfloor",
			condition_size = 4,
			condition = { "water-tile" }
		},
		stack_size = 200
	},
	
	{
		type = "item",
		name = "woodfence",
		icon = "__farmtorio__/graphics/icons/woodfence.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "g[woodfence]",
		place_result = "woodfence",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "cowfarm",
		icon = "__farmtorio__/graphics/icons/cowfarm.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "f[cowfarm]",
		place_result = "cowfarm",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "slaughterhouse",
		icon = "__farmtorio__/graphics/icons/slaughterhouse.png",
		flags = {"goes-to-quickbar"},
		subgroup = "buildings-subgroup",
		order = "g[slaughterhouse]",
		place_result = "slaughterhouse",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "steak",
		icon = "__farmtorio__/graphics/icons/steak.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "n[steak]",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "beercan",
		icon = "__farmtorio__/graphics/icons/beercan.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "o[beercan]",
		stack_size = 200
	},
	
	{
		type = "tool",
		name = "sixpack",
		icon = "__farmtorio__/graphics/icons/sixpack.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "science-subgroup",
		order = "a",
		stack_size = 200,
		durability = 1,
		durability_description_key = "description.science-pack-remaining-amount"
	},
	
    {
		type = "item",
		name = "tractor",
		icon = "__base__/graphics/icons/car.png",
		flags = {"goes-to-quickbar"},
		subgroup = "farmcraft-subgroup",
		order = "a",
		place_result = "tractor",
		stack_size = 200
	},
	
	{
		type = "item",
		name = "biomass",
		icon = "__farmtorio__/graphics/icons/biomass.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "p",
		stack_size = 200
	},
	
})
