
-- list of fluids that can be turned into fluid biomass
fluidlist = {

	-- Farmtorio
	{name = "beer", energy=1, amount=1, result = 1},

}

-- recipes for fluid biomass
function createFluidBiomassRecipe(fluid)
	if data.raw.fluid[fluid.name] then
		data:extend({
			{
				type = "recipe",
				name = fluid.name.."-biomass-processing",
				category = "fluid-biomass-processing",
				enabled = true,
				hidden = true,
				energy_required = fluid.energy,
				ingredients =
				{
				  {type="fluid", name=fluid.name, amount=fluid.amount}
				},
				results =
				{
				  {type="item", name="biomass", amount=fluid.result}
				},
				icon = "__farmtorio__/graphics/icons/biomass.png",
				subgroup = "fluid-recipes",
				order = "z[venting]"
			}
		})
	end
end

for i, fluid in pairs(fluidlist) do
	createFluidBiomassRecipe(fluid)
end



