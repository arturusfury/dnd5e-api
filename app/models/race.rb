class Race < ApplicationRecord
  has_many :racial_languages
  has_many :languages, through: :racial_languages
  has_many :racial_traits
  has_many :traits, through: :racial_traits
  has_many :racial_skills
  has_many :skills, through: :racial_skills
  has_many :racial_ability_bonuses
  has_many :abilities, through: :racial_ability_bonuses

  def self.load_race(race, subrace)
    if !number?(race) && !subrace.nil?
      find_by_subrace(race, subrace)
    elsif !number?(race) && subrace.nil?
      find_by_race(race)
    end
  end

  def self.find_by_race(race)
    data = where('lower(name) = ?', make_readable(race.downcase))

    data.empty? ? nil : data
  end

  def self.find_by_subrace(race, subrace)
    find_by('lower(name) = ? AND lower(subrace) = ?',
            make_readable(race.downcase), make_readable(subrace.downcase))
  end
end
