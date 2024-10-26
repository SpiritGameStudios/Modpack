execute on vehicle run data modify storage graves:main opening.grave_entity set from entity @s
data modify storage graves:main opening merge from storage graves:main opening.grave_entity.item.components."minecraft:custom_data".graves
execute if data storage graves:config {allow_robbing:0b} on attacker unless function graves:opening/access_grave run return run function graves:opening/fail_grave_robbery
data modify storage graves:main opening.items set from storage graves:main opening.grave_entity.item.components."minecraft:bundle_contents"
execute if data storage graves:main opening{found_drops_late:1b} on attacker run function graves:opening/items/check_for_missing_pre_death_items
function graves:opening/items/loot_next_item
function graves:opening/xp/loot_xp
data modify storage graves:main destruction.owner_uuid set from storage graves:main opening.owner_uuid
data modify storage graves:main destruction.grave_uuid set from storage graves:main opening.grave_entity.UUID
data modify storage graves:main destruction.name_tag_uuid set from storage graves:main opening.name_tag_uuid
function graves:destruction/destroy_grave with storage graves:main destruction
data remove storage graves:main opening
return 1