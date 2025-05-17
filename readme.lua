site = fs.tryLoadFile("site.lua")()

local readme = [[
# Today, I Learned
Here's a collection of things I've learned or found interesting:

<% for _, item in ipairs(table.sortBy(items, "date", true)) do -%>
* [<%- item.title %>](<%- site.url %><%- string.gsub(item.path, "%.md$", ".html") %>)
<% end -%>
]]

return {
	readFromSource("src"),
	extractFrontmatter("%.md$"),
	aggregate("README.md", "%.md$"),
	applyTemplates({ { "README.md", readme } }),
	writeToDestination("docs", "README.md"),
}

