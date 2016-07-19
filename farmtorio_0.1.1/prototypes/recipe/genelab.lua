data:extend({
    {
        type = "recipe",
        name = "iron-ore-bush",
        enabled = "false",
        energy_required = 2,
        category = "genelab",
        subgroup = "bushes-subgroup",
        ingredients =
        {
            { "iron-ore", 2 },
            { "biomass", 5 }
        },
        result = "iron-ore-bush",
        result_count = 2
    },

    {
        type = "recipe",
        name = "photovoltaic-plant",
        enabled = "true",
        energy_required = 2,
        category = "genelab",
        subgroup = "bushes-subgroup",
        ingredients =
        {
            { "solar-panel", 1 },
            { "biomass", 20 }
        },
        result = "photovoltaic-plant-1",
        result_count = 20
    },
})
