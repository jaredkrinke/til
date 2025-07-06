site = fs.tryLoadFile("site.lua")()

local readme = [[
# Today, I Learned
Here's a collection of things I've learned or found interesting:

# Recent posts
| Date | Title |
|---|---|
<% for i, item in ipairs(table.sortBy(items, "date", true)) do -%>
<% if i > 8 then break end -%>
| <%= item.date -%> | [<%- item.title %>](<%- site.url %><%- string.gsub(item.path, "%.md$", ".html") %>) |
<% end -%>

# All posts, by category
<%
local grouped = table.groupBy(items, "keywords")
local groups = {}
for k, v in pairs(grouped) do table.insert(groups, { key = k, items = v }) end
for _, group in ipairs(table.sortBy(groups, "key")) do
-%>

## <%- group.key %>
<% for _, item in ipairs(group.items) do -%>
* [<%- item.title %>](<%- site.url %><%- string.gsub(item.path, "%.md$", ".html") %>)
<% end -%>
<% end -%>
]]

return {
	readFromSource("src"),
	extractFrontmatter("%.md$"),
	aggregate("README.md", "%.md$"),
	applyTemplates({ { "README.md", readme } }),
	writeToDestination(".", "README.md"),
}

