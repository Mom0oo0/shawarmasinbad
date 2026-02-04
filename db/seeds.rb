# Business Hours
BusinessHour.destroy_all
days = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
days.each_with_index do |day, index|
  BusinessHour.create!(
    day: day, 
    opens_at: "14h00", 
    closes_at: (index >= 4 ? "02h00" : "01h00"),
    position: index
  )
end

# Menu Items
MenuItem.destroy_all

# Sandwiches
MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich au Poulet",
  title_en: "Chicken Sandwich",
  price_small: 8.99,
  price_large: 12.99,
  position: 1
)

MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich au Bœuf",
  title_en: "Beef Sandwich",
  price_small: 9.99,
  price_large: 14.99,
  position: 2
)

MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich Mixte",
  title_en: "Mixed Sandwich",
  price_small: 9.99,
  price_large: 14.99,
  position: 3
)

MenuItem.create!(
  category: "sandwiches",
  title_fr: "Sandwich Falafel",
  title_en: "Falafel Sandwich",
  price_small: 8.99,
  price_large: 12.99,
  position: 4
)

# Trios
MenuItem.create!(
  category: "trios",
  title_fr: "Trio au Poulet",
  title_en: "Chicken Trio",
  price_small: 14.49,
  price_large: 19.49,
  position: 1
)

MenuItem.create!(
  category: "trios",
  title_fr: "Trio au Bœuf",
  title_en: "Beef Trio",
  price_small: 15.49,
  price_large: 20.49,
  position: 2
)

MenuItem.create!(
  category: "trios",
  title_fr: "Trio Mixte",
  title_en: "Mixed Trio",
  price_small: 15.49,
  price_large: 20.49,
  position: 3
)

# Starters
MenuItem.create!(
  category: "starters",
  title_fr: "Riz",
  title_en: "Rice",
  price_small: 5.99,
  price_large: 7.99,
  position: 1
)

MenuItem.create!(
  category: "starters",
  title_fr: "Patates",
  title_en: "Potatoes",
  price_small: 5.99,
  price_large: 7.99,
  position: 2
)

MenuItem.create!(
  category: "starters",
  title_fr: "Sauce à l'Ail",
  title_en: "Garlic Sauce",
  price_small: 5.99,
  price_large: 7.99,
  position: 3
)

MenuItem.create!(
  category: "starters",
  title_fr: "Hummus",
  title_en: "Hummus",
  price_small: 5.99,
  price_large: 7.99,
  position: 4
)

MenuItem.create!(
  category: "starters",
  title_fr: "Salade de Fattouch",
  title_en: "Fattoush Salad",
  price_small: 4.99,
  price_large: 6.99,
  position: 5
)

MenuItem.create!(
  category: "starters",
  title_fr: "Taboulé",
  title_en: "Tabbouleh",
  price_small: 5.99,
  price_large: 7.99,
  position: 6
)

MenuItem.create!(
  category: "starters",
  title_fr: "Kebbeh au Bœuf",
  title_en: "Beef Kebbeh",
  price_small: 2.50,
  position: 7
)

MenuItem.create!(
  category: "starters",
  title_fr: "Samboussa",
  title_en: "Sambousek",
  price_small: 2.49,
  position: 8
)

# Plates
MenuItem.create!(
  category: "plates",
  title_fr: "Assiette Shawarma au Poulet",
  title_en: "Chicken Shawarma Plate",
  price_large: 20.49,
  position: 1
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette Shawarma au Bœuf",
  title_en: "Beef Shawarma Plate",
  price_large: 21.49,
  position: 2
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette Shawarma Mixte",
  title_en: "Mixed Shawarma Plate",
  price_large: 21.49,
  position: 3
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette de Brochettes de Poulet",
  title_en: "Chicken Skewers Plate",
  price_large: 22.99,
  position: 4
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette de Brochettes de Bœuf",
  title_en: "Beef Skewers Plate",
  price_large: 24.49,
  position: 5
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette Kebab au Bœuf",
  title_en: "Beef Kebab Plate",
  price_large: 22.99,
  position: 6
)

MenuItem.create!(
  category: "plates",
  title_fr: "Assiette de Falafels",
  title_en: "Falafel Plate",
  price_large: 17.99,
  position: 7
)

# Family
MenuItem.create!(
  category: "family",
  title_fr: "Poulet pour 4-5 personnes",
  title_en: "Chicken 4-5 people",
  price_large: 61.99,
  position: 1
)

MenuItem.create!(
  category: "family",
  title_fr: "Bœuf pour 4-5 personnes",
  title_en: "Beef 4-5 people",
  price_large: 64.99,
  position: 2
)

MenuItem.create!(
  category: "family",
  title_fr: "Mixte pour 4-5 personnes",
  title_en: "Mixed 4-5 people",
  price_large: 64.99,
  position: 3
)

MenuItem.create!(
  category: "family",
  title_fr: "Poulet pour 7-8 personnes",
  title_en: "Chicken 7-8 people",
  price_large: 89.99,
  position: 4
)

MenuItem.create!(
  category: "family",
  title_fr: "Bœuf pour 7-8 personnes",
  title_en: "Beef 7-8 people",
  price_large: 93.99,
  position: 5
)

MenuItem.create!(
  category: "family",
  title_fr: "Mixte pour 7-8 personnes",
  title_en: "Mixed 7-8 people",
  price_large: 93.99,
  position: 6
)

MenuItem.create!(
  category: "family",
  title_fr: "Brochettes pour 7-9 personnes",
  title_en: "Skewers 7-9 people",
  price_large: 93.99,
  position: 7
)

# Drinks
MenuItem.create!(
  category: "drinks",
  title_fr: "Boissons Gazeuses",
  title_en: "Soft Drinks",
  price_small: 1.99,
  position: 1
)

MenuItem.create!(
  category: "drinks",
  title_fr: "Ayran",
  title_en: "Ayran",
  price_small: 3.50,
  position: 2
)

MenuItem.create!(
  category: "drinks",
  title_fr: "Jus Naturel",
  title_en: "Natural Juice",
  price_small: 2.99,
  position: 3
)
