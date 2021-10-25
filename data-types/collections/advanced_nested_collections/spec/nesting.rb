def stores
  {
    olive_garden: {
      employees: %w[
        Jeff
        Zach
        Samantha
      ],
      dishes: [
        {
          name: 'Risotto',
          ingredients: %w[
            Rice
            Cheese
            Butter
          ],
          price: 12
        },
        {
          name: 'Steak',
          ingredients: %w[
            Beef
            Garlic
          ],
          price: 15
        }
      ]
    },
    dennys: {
      employees: %w[
        Bob
        Sue
        James
      ],
      dishes: [
        {
          name: 'Pancakes',
          ingredients: %w[
            Flour
            Eggs
            Milk
            Syrup
          ],
          price: 10
        },
        {
          name: 'Waffles',
          ingredients: %w[
            Flour
            Eggs
            Syrup
          ],
          price: 7
        }
      ]
    },
    macdonalds: {
      employees: %w[
        Alvin
        Simon
        Theodore
      ],
      dishes: [
        {
          name: 'Big Mac',
          ingredients: %w[
            Bun
            Hamburger
            Ketchup
            pickles
          ],
          price: 5
        },
        {
          name: 'Fries',
          ingredients: %w[
            Potatoes
            Salt
          ],
          price: 2
        }
      ]
    }
  }
end
