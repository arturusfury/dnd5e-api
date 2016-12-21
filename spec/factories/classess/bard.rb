FactoryGirl.define do
  factory :bard_level_01, class: Classes::Bard do
    subclass 'Bard'
    level 1
    prof_bonus 2
    cantrips_known 4
    spells_known 2
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
    spell_slots_level_06 0
    spell_slots_level_07 0
    spell_slots_level_08 0
    spell_slots_level_09 0
  end

  factory :bard_level_02, class: Classes::Bard do
    subclass 'Bard'
    level 2
    prof_bonus 2
    cantrips_known 4
    spells_known 2
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
    spell_slots_level_06 0
    spell_slots_level_07 0
    spell_slots_level_08 0
    spell_slots_level_09 0
  end

  factory :bard_level_19_lore, class: Classes::Bard do
    subclass 'College of Lore'
    level 19
    prof_bonus 2
    cantrips_known 2
    spells_known 22
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 3
    spell_slots_level_06 2
    spell_slots_level_07 1
    spell_slots_level_08 1
    spell_slots_level_09 1
  end

  factory :bard_level_20_lore, class: Classes::Bard do
    subclass 'College of Lore'
    level 20
    prof_bonus 6
    cantrips_known 5
    spells_known 22
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 3
    spell_slots_level_06 2
    spell_slots_level_07 2
    spell_slots_level_08 1
    spell_slots_level_09 1
  end

  factory :bard_level_20_valor, class: Classes::Bard do
    subclass 'College of Valor'
    level 20
    prof_bonus 6
    cantrips_known 5
    spells_known 22
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 3
    spell_slots_level_06 2
    spell_slots_level_07 2
    spell_slots_level_08 1
    spell_slots_level_09 1
  end
end
