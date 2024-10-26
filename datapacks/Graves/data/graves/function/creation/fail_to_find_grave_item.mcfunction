function graves:creation/remove_loading_grave_listing with storage graves:main creation.target_grave_item
execute unless data storage graves:main creation.grave.inventory_pos run return run tellraw @s [{"color":"red","text":"Your inventory dropped (if there was anything to drop) at an unknown location, and the Graves data pack couldn't find your death information.\n\nThis may be an incompatibility or bug. We can help solve this for you in our data pack help channel:\n"},{"underlined":true,"text":"https://vanillatweaks.net/discord","hoverEvent":{"action":"show_text","value":"Click to open URL."},"clickEvent":{"action":"open_url","value":"https://vanillatweaks.net/discord"}}]
execute if data storage graves:config {allow_locating:0b} run return run tellraw @s [{"color":"red","text":"Your inventory dropped (if there was anything to drop), but the Graves data pack couldn't find your death information.\n\nThis may be an incompatibility or bug. We can help solve this for you in our data pack help channel:\n"},{"underlined":true,"text":"https://vanillatweaks.net/discord","hoverEvent":{"action":"show_text","value":"Click to open URL."},"clickEvent":{"action":"open_url","value":"https://vanillatweaks.net/discord"}}]
function graves:creation/convert_inventory_pos_to_ints
return run tellraw @s [{"color":"red","text":"Your inventory dropped (if there was anything to drop) at ("},{"storage":"graves:main","nbt":"creation.inventory_pos_ints.x"},", ",{"storage":"graves:main","nbt":"creation.inventory_pos_ints.y"},", ",{"storage":"graves:main","nbt":"creation.inventory_pos_ints.z"},") in ",{"storage":"graves:main","nbt":"creation.grave_listing.dimension"},", but the Graves data pack couldn't find your death information.\n\nThis may be an incompatibility or bug. We can help solve this for you in our data pack help channel:\n",{"underlined":true,"text":"https://vanillatweaks.net/discord","hoverEvent":{"action":"show_text","value":"Click to open URL."},"clickEvent":{"action":"open_url","value":"https://vanillatweaks.net/discord"}}]