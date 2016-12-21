FactoryGirl.define do
  factory :rogue_level_01, class: Classes::Rogue do
    subclass 'Rogue'
    level 1
    prof_bonus 2
    sneak_attack 1
  end

  factory :rogue_level_02, class: Classes::Rogue do
    subclass 'Rogue'
    level 2
    prof_bonus 2
    sneak_attack 1
  end

  factory :rogue_level_19_arcane, class: Classes::Rogue do
    subclass 'Arcane Trickster'
    level 19
    prof_bonus 6
    sneak_attack 10
    cantrips_known 4
    spells_known 12
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :rogue_level_20_arcane, class: Classes::Rogue do
    subclass 'Arcane Trickster'
    level 20
    prof_bonus 6
    sneak_attack 10
    cantrips_known 4
    spells_known 12
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :rogue_level_20_thief, class: Classes::Rogue do
    subclass 'Thief'
    level 20
    prof_bonus 6
    sneak_attack 10
  end
end
