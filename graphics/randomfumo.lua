-- Special Random Selection Image Set
themeset = {}

function shuffleTable(t)
    local n = #t
    local truerand = game.create_random_generator()
    for i = n, 2, -1 do
        local j = truerand(i)
        t[i], t[j] = t[j], t[i]
    end
    return t
end
local icon_list = {
        "fumo_alice_margatroid",
        "fumo_aya_shameimaru",
        "fumo_cirno",
        "fumo_cirno_dark",
        "fumo_daiyousei",
        "fumo_eirin_yagokoro",
        "fumo_flandre_scarlet",
        "fumo_hong_meiling",
        "fumo_kasen_ibaraki",
        "fumo_koakuma",
        "fumo_marisa_kirisame",
        "fumo_nazrin",
        "fumo_patchouli_knowledge",
        "fumo_reimu_hakurei",
        "fumo_reisen_udongein_inaba",
        "fumo_remilia_scarlet",
        "fumo_rin_kaenbyou",
        "fumo_rumia",
        "fumo_sakuya_izayoi",
        "fumo_sanae_kochiya",
        "fumo_suika_ibuki",
        "fumo_tenshi_hinanawi",
        "fumo_youmu_konpaku",
        "fumo_yukari_yakumo",
        "fumo_yuuka_kazami",
        "fumo_yuyuko_saigyouji"
}
shuffleTable(icon_list)

error(serpent.block(icon_list))

themeset.list = {
        -- Base Game
	["automation-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[1]..".png", locale_suffix="name-fumo"},
	["logistic-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[2]..".png", locale_suffix="name-fumo"},
	["military-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[3]..".png", locale_suffix="name-fumo"},
	["chemical-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[4]..".png", locale_suffix="name-fumo"},
	["production-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[5]..".png", locale_suffix="name-fumo"},
	["utility-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[6]..".png", locale_suffix="name-fumo"},
	["space-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[7]..".png", locale_suffix="name-fumo"},
	-- Space Age
	["metallurgic-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[8]..".png", locale_suffix="name-fumo"},
	["electromagnetic-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[9]..".png", locale_suffix="name-fumo"},
	["agricultural-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[10]..".png", locale_suffix="name-fumo"},
	["cryogenic-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[11]..".png", locale_suffix="name-fumo"},
	["promethium-science-pack"]={icon="__cirno-science__/graphics/fumos/"..icon_list[12]..".png", locale_suffix="name-fumo"},
}

