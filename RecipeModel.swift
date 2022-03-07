//
//  RecipeModel.swift
//  recipeapp
//
//  Created by Kar Mun Lee on 04/03/2022.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let instruction: String
    let category: Category.RawValue
    let datePublished: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Creamy Carrot Soup",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
            ingredients: "1/4 cup cashews, \n1 medium onion, cut into ½-inch dice (2 cups), \n1 pounds carrots, cut into ½-inch dice (3½ cups), \n1 red bell pepper, peeled and cut into ½-inch dice (1 cup), \n1 sprig fresh rosemary, \n1 sprig fresh thyme, \n1 large fresh sage leaf, \n4 cloves garlic, minced, \n1 tablespoon lemon juice, \nSea salt and freshly ground black pepper or cayenne pepper, to taste, \n½ cup fresh pomegranate seeds, \n2 tablespoons finely chopped fresh parsley",
            instruction: "1. In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes. Transfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside. \n2. In a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender. \n3. Remove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf. \n4. Transfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling. \n5. To serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley.",
            category: "Soup",
            datePublished: ""
        ),
        
        Recipe(
            name: "Quick Chickpea Bolognese",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/60788/Quick-Chickpea-Bolognese-360x270-c.jpg",
            description: "Got a few minutes and want something delicious and totally nourishing for dinner? Try this quick vegan chickpea bolognese sauce over your favorite pasta! Chopping the chickpeas gives the sauce a finer texture that’s easier to eat with noodles. Feel free to leave this step out, however, if you’d rather eat them whole. This bolognese is completely plant-based and loaded with veggie goodness to make you feel awesome. Imagine that after eating a big bowl of pasta!",
            ingredients: "1½ cups diced red onion, \n3 cloves fresh garlic, minced, \n1 (15.5-ounce) can chickpeas, rinsed, drained, and chopped (1½ cups), \n1 medium carrot, cut into ¼-inch dice, \n1 cup mushrooms (any kind you like), cut into ¼-inch dice, \n1 (14.5-ounce) can diced tomatoes (1½ cups), \n1 (15-ounce) can tomato sauce (1½ cups), \n½ tablespoon dried oregano, \n1 tablespoon dried parsley, \nSea salt, \n3 cups cooked brown rice penne or fusilli pasta (or any other whole-grain pasta)",
            instruction: "1. Heat a large saucepan over medium heat, add the red onions, garlic, chickpeas, carrots, and a dash of salt. Sauté the vegetables for about 5 minutes, or until the onions are slightly translucent. Add water 1 to 2 tablespoons at a time, as needed, to keep vegetables from sticking to the pan. \n2. Add the mushrooms and sauté for about 2 minutes. \n3. Add the diced tomatoes, tomato sauce, oregano, and parsley. Sauté for 2 more minutes, taste and adjust seasoning. \n4. Pour as much of the sauce as you like over the pasta and eat up—it's all fantastic for you and tastes even better.",
            category: "Main",
            datePublished: ""
        ),
        
        Recipe(
            name: "Kimchi Noodle Salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/22592/Kimchi-Noodle-300kb-360x270-c.jpg",
            description: "Kimchi is a fermented condiment made from any number of vegetables. In this recipe, I like to use a very spicy cabbage kimchi, and I recommend you do, too. Taste your kimchi first and use less of it if you want a milder salad, and certainly feel free to add more if you want to give the dish more kick. Kimchi is often made with shellfish or other animal ingredients, so be sure to look for a vegan brand for this recipe. Both kimchi and gochujang (Korean chile paste) are available in the Asian section of grocery stores or online. ",
            ingredients: "1 pound brown rice noodles, cooked according to package directions, drained, and rinsed until cool, \n2 ½ cups chopped cabbage kimchi, \n3 to 4 tablespoons gochujang, \n1 cup Mung Bean Sprouts, \n4 green onions (white and green parts), thinly sliced, \n1 medium cucumber, halved, seeded and thinly sliced, \n2 tablespoons sesame seeds, toasted",
            instruction: "1. Place the rice noodles, kimchi, gochujang, and mung bean sprouts in a large bowl and mix well. \n2. To serve, divide the mixture between four individual plates and garnish each with the green onions, cucumber slices, and sesame seeds.",
            category: "Main",
            datePublished: ""
        ),
        
        Recipe(
            name: "Crispy Potato Vegan Cheese Sticks",
            image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/108176/Crispy-Potato-Cheese-Sticks-WORDPRESS-scaled-360x270-c.jpg",
            description: "Loaded with a shockingly mozzarella-like potato cheese, these crispy-on-the-outside, melty-on-the-inside vegan cheese sticks require a little planning ahead, but they are well worth the effort.",
            ingredients: "1 lb. Yukon gold potatoes, peeled and cut into 1-inch cubes, \n1¼ cups unsweetened plant milk, such as almond, soy, cashew, or rice; divided, \n¼ teaspoon agar powder, \n3 tablespoons nutritional yeast, divided, \n1½ teaspoon white wine vinegar, \n1 teaspoon lemon juice,\n ½ of a small garlic clove, minced, \n½ teaspoon sea salt, divided, \n¼ teaspoon freshly ground black pepper, divided, \n3 tablespoons arrowroot powder, \n¾ cup whole grain bread crumbs, \n1 tablespoon ground flaxseeds, \n1 teaspoon Italian seasoning, \n¼ teaspoon paprika, \n1 cup oil-free marinara sauce",
            instruction: "1. Place potatoes in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, about 15 minutes or until tender. \n2. In a small saucepan combine ¾ cup of the milk and the agar powder; mix well. Bring to boiling; reduce heat. Simmer 10 minutes, stirring frequently. Remove from heat; cool 5 to 10 minutes. \n3. Transfer potatoes to a food processor. Add the milk mixture, 1 Tbsp. of the nutritional yeast, the vinegar, lemon juice, garlic, ¼ tsp. of the salt, and ⅛ tsp. of the pepper. Cover and process until very creamy. \n4. Line a small freezer-safe tray or dish with parchment paper. Spread the potato cheese in prepared tray to no more than ½ inch thick; let cool. Cover tray in plastic wrap; freeze overnight. \n5. Preheat oven to 400°F. Line a baking sheet with parchment paper. In a shallow bowl whisk together the arrowroot powder and the remaining ½ cup milk until there are no lumps. \n6. In another bowl whisk together the bread crumbs, the remaining 2 Tbsp. nutritional yeast, the flaxseeds, Italian seasoning, paprika, the remaining ¼ tsp. salt, and the remaining ⅛ tsp. pepper. Place one-fourth of the mixture in a shallow bowl. \n7. Remove cheese from freezer; let stand on the counter a few minutes or until the parchment releases easily from the tray. Invert the cheese onto a cutting board and remove the parchment. Cut cheese into 2× ½-inch sticks. \n8. Dip frozen cheese sticks in milk mixture, then roll in bread crumb mixture to coat. Place on the prepared baking sheet. Repeat dipping and rolling each stick a second time, starting with the sticks that were coated first and adding reserved bread crumb mixture as crumbs get soggy. Arrange sticks at least 1 inch apart on baking sheet. \n9. Bake 20 to 22 minutes or until the cheese starts to peek out from the sticks. Don’t bake too long or the sticks will melt. Serve hot with marinara sauce for dipping.",
            category: "Appetizer",
            datePublished: ""
        ),
        
        Recipe(
            name: "Vegan Spaghetti Marinara with Lentil Balls",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/138584/spaghetti-meatballs-wordpress-360x270-c.jpg",
            description: "This whole-food vegan take on classic spaghetti and meatballs is as healthy as it is satisfying. The lentil “meatballs” take some time to make, but they’re well worth the effort. They also freeze beautifully for up to a month: After baking, freeze them in an airtight container. Reheat in a 350°F oven 20 to 30 minutes. ",
            ingredients: "1 cup dry brown lentils, rinsed and drained, \n1 8-oz. package button or cremini mushrooms, trimmed and chopped, \n1 onion, chopped (1 cup), \n3 small cloves garlic, \nminced, ¼ cup whole wheat flour, \n3 tablespoons reduced-sodium tamari or soy sauce, \n2 tablespoons no-salt-added tomato paste, \n1 tablespoon nutritional yeast, \n1 teaspoon dried oregano, crushed, \n1 teaspoon onion powder, \nSea salt and freshly ground black pepper, to taste, \n1 lb. dry whole grain spaghetti, \n6 cups purchased oil-free marinara sauce, \n2 Tbsp. chopped fresh basil",
            instruction: "1. In a large saucepan combine lentils and 1 cup water. Bring to boiling; reduce heat. Cover and simmer 15 minutes. Add mushrooms, onion, and garlic. Cover and cook about 15 minutes more or until lentils are tender. Uncover and cook until any remaining liquid has evaporated. \n2. Stir in the next seven ingredients (through salt and pepper). Cook, uncovered, over low about 10 minutes or until liquid is absorbed and pan is very dry, stirring occasionally. (Watch carefully so lentils do not scorch.) Spread mixture in a shallow baking pan; cool completely. \n3. Preheat oven to 250°F. Line a 15×10-inch baking pan with parchment paper. Scoop out 2 Tbsp. lentil mixture, shape into a ball, and place in prepared pan. Repeat to make about 20 lentil balls. Bake 45 minutes or until lightly browned and crisp. \n4. Meanwhile, cook spaghetti according to package directions. In a saucepan heat marinara sauce. Drain spaghetti, return to pot, and toss with 3 cups of the warm marinara sauce. \n5. To serve, top spaghetti with lentil balls and top with the remaining sauce. Sprinkle with basil.",
            category: "Main",
            datePublished: ""
        ),
        
        Recipe(
            name: "Polenta and Sweet Potato Mash with Mushroom Sauce",
            image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/153446/Mushroom-Tomato-Sauce-over-Sweet-Potato-Polenta-wordpress-360x270-c.jpg",
            description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
            ingredients: "3 cups cubed cooked sweet potatoes (peeled, if desired), \n1 16- to 18-oz. tube polenta, cut into chunks, \n1 teaspoon onion powder, \n5 cups fresh baby spinach, \n1 8-oz. package fresh cremini mushrooms, halved, \n1 cup chopped onion, \n6 cloves garlic, \nminced, 1½ cups cherry tomatoes, halved, \n¾ cup low-sodium vegetable broth, \n½ teaspoon dried Italian seasoning, crushed, \n1 teaspoon arrowroot powder, \nFreshly ground black pepper, to taste, \n2 tablespoons pine nuts, toasted",
            instruction: "1. In a large saucepan combine sweet potatoes, polenta, onion powder, and 1 cup water. Cook over medium 10 minutes or until heated through, stirring occasionally. Mash to desired consistency. Gradually stir in spinach; cook until wilted. Reduce heat to low; cover and keep warm. \n2. For sauce, in a large skillet sauté mushrooms, onion, and garlic over medium 5 minutes, adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking. Stir in cherry tomatoes. Cook and stir 4 to 5 minutes more or until tomatoes soften and blister. In a small bowl stir together vegetable broth, Italian seasoning, and arrowroot powder. Add to vegetables and cook just until thickened. Season with pepper. \n3. Top polenta mixture with sauce. Sprinkle with pine nuts.",
            category: "Snack",
            datePublished: ""
        )
    ]
}
