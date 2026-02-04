# Business Hours
BusinessHour.destroy_all
days = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
days.each_with_index do |day, index|
  BusinessHour.create!(
    day: day, 
    opens_at: "14h00", 
    closes_at: (index >= 4 ? "02h00" : "01h00"), # Fri, Sat, Sun open late? Based on user request/context
    position: index
  )
end

# Menu Items
MenuItem.destroy_all

# Sandwiches
MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich Poulet",
  title_en: "Chicken Sandwich",
  description_fr: "Shawarma au poulet avec sauce à l'ail et cornichons dans un pita frais.",
  description_en: "Juicy chicken shawarma with garlic sauce and pickles in fresh pita.",
  price_small: 8.99,
  price_large: 12.99,
  position: 1
)

MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich Boeuf",
  title_en: "Beef Sandwich",
  description_fr: "Shawarma au bœuf tendre avec tahini, persil et oignons.",
  description_en: "Tender beef shawarma with tahini, parsley, and onions.",
  price_small: 9.99,
  price_large: 14.99,
  position: 2
)

MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich Mixte",
  title_en: "Mixed Sandwich",
  description_fr: "Un mélange parfait de poulet et de bœuf pour une saveur ultime.",
  description_en: "A perfect blend of chicken and beef for the ultimate flavor.",
  price_small: 9.99,
  price_large: 14.99,
  position: 3
)

MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich Falafel",
  title_en: "Falafel Sandwich",
  description_fr: "Boulettes de pois chiches croustillantes avec tahini et légumes frais.",
  description_en: "Crispy chickpea patties with tahini and fresh garden vegetables.",
  price_small: 8.99,
  price_large: 12.99,
  position: 4
)

# Trios
MenuItem.create!(
  category: "trios",
  title_fr: "Trio Poulet",
  title_en: "Chicken Trio",
  description_fr: "Sandwich au poulet servi avec un accompagnement et une boisson fraîche.",
  description_en: "Chicken sandwich served with a side and a refreshing drink.",
  price_small: 14.49,
  price_large: 19.49,
  position: 1
)

MenuItem.create!(
  category: "trios",
  title_fr: "Trio Boeuf",
  title_en: "Beef Trio",
  description_fr: "Combo sandwich au bœuf avec accompagnement et boisson au choix.",
  description_en: "Beef sandwich served with a side and a refreshing drink.",
  price_small: 15.49,
  price_large: 20.49,
  position: 2
)

MenuItem.create!(
  category: "trios",
  title_fr: "Trio Mixte",
  title_en: "Mixed Trio",
  description_fr: "L'expérience du sandwich mixte en repas complet et satisfaisant.",
  description_en: "The mixed sandwich experience in a complete and satisfying meal.",
  price_small: 15.49,
  price_large: 20.49,
  position: 3
)

# Plates
MenuItem.create!(
  category: "plates",
  title_fr: "Assiette Poulet",
  title_en: "Chicken Plate",
  description_fr: "Portion généreuse de shawarma au poulet avec riz, patates et sauce à l'ail.",
  description_en: "Generous portion of chicken shawarma with rice, potatoes and garlic sauce.",
  price_large: 20.49,
  position: 1
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette Boeuf",
  title_en: "Beef Plate",
  description_fr: "Plat de shawarma au bœuf servi avec riz, patates, salade et tahini.",
  description_en: "Beef shawarma plate served with rice, potatoes, salad and tahini.",
  price_large: 21.49,
  position: 2
)

