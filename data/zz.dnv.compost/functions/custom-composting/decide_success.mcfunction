execute if score @s dnv.comp.item_found matches 100 run return 1
execute if score @s dnv.comp.item_found matches 65 if predicate {"condition": "random_chance","chance": 0.65} run return 1
execute if score @s dnv.comp.item_found matches 30 if predicate {"condition": "random_chance","chance": 0.3} run return 1
execute if score @s dnv.comp.item_found matches 50 if predicate {"condition": "random_chance","chance": 0.5} run return 1
execute if score @s dnv.comp.item_found matches 10 if predicate {"condition": "random_chance","chance": 0.1} run return 1
execute if score @s dnv.comp.item_found matches 85 if predicate {"condition": "random_chance","chance": 0.8} run return 1
return 0