//
//  Constants.swift
//  BrowHaus
//
//  Created by corneliu postolache on 3/4/21.
//

struct K {
    static let segueRegister = "RegisterToTab"
    static let segueLogin = "LoginToTab"
    static let chatCellIdentifier = "ChatReusableCell"
    static let cellNibName = "MessageCell"
    
    
    struct Services {
        static let titleBrows = " Brows "
        static let titleLashes = " Lashes "
        static let titleLips = " Lips "
        static let titleFacial = " Facial "
        
        static let imageBrows = "brows.jpg"
        static let imageLashes = "lashes.jpg"
        static let imageLips = "lips.jpg"
        static let imageFacial = "facial.jpg"
        
        static let descriptionBrows = "Microblading is a way of implanting pigment under the epidermis using a specially designed tiny blade which leaves thin realistic hair strokes for the most natural finish. Together we design a brow which is totally bespoke to you – your colour will be mixed from the highest Quality pigments just for you. With this method I can create almost any look, from a very natural light finish or a beautifully bold brow. Sparse or missing brows can be completely restored. When using the hand held microblade, the colour is deposited closer to the surface than when a machine is used leaving very fine and crisp hair strokes with no spilling under the skin. Each technique is selected for the customer individually. technique selection depends primarily on the condition of natural eyebrows, their thickness and amount of hair. It is also important to know that the pigmentation result is expected to be temporary (18-24 months). Quality is remembered long after the price is forgotten. MICROSHADING(POWDER BROWS) The 1st slide & tap manual technique is applied without using a machine. This technique provides an ideal eyebrow shape through gentle shading, i.e. By applying a very thick plant-based pigment into the skin. The effect is similar to highlighting using shadows, but the huge difference is that the effect remains for 18-24months. The result is extremely natural and unnoticeable – it does not look like a tattoo. This technique is ideal for someone who prefers the look of conventional makeup. Eyebrow shape, color and intensity are selected according to the facial features and preferences of the customer. This technique is most suitable for customers that need a slight eyebrow correction when there is a sufficient amount of natural hair."
        
        static let descriptionLashes = "LLX LASH LIFT With this procedure your natural lashes are lifted up and treated with a special keratin infusion. As a result, you have thick, dark lashes that beautiful curve upwards. This creates the universally desired “open eye” look. * The results are breathtaking. * The effect lasts up to 3 months * No lash extensions * No lash growth formula or mascara * No lash curling perm The boosting and lifting effect lasts for 6-12 weeks, which is the natural life cycle of the eyelash. Lashes can be transformed to make a dramatic impact and enhance the eyes. There are no false lashes attached or any adhesives used. This innovative treatment works by boosting and lifting each individual lash, then tinting them for a thicker, darker and longer looking lash which will last for 6-12 weeks. This treatment will lend a remarkable amount of length, thickness and uplift to your own eyelashes. All the clients who tried the LLX LASH LIFT treatment are delighted and renew on a regular basis."
        
        static let descriptionLips = "The Hyaluron Pen is a needle-free device that deposits Hyaluronic Acid into the lips with applied pressure. The pressure from the pen is strong enough at 800 km/second to deposit the Hyaluronic Acid into the epidermal and upper dermal layers of skin without any visible holes being created. The risk of bruising and swelling is quite low. It’s half the price of lip injections and completely painless. HOW LONG DOES THIS TREATMENT LAST: 6-9 months depending on your body. After your first treatment it is recommended to come back between 2 weeks and 2 months for a touch up. This is recommended for a more fuller and volume look as well as longer lasting.WHY CHOOSE HYALURON PEN? Ideal for clients that are frightened or uncomfortable with needles, this pain free treatment is less invasive and fast, and allows clients to plump and fill their lips, fine lines and wrinkles. The pen uses pressure which causes the Hyaluronic Acid to turn into Nano Scale molecules and inserts the Hyaluronic acid Filler through the skin. The Diameter of this flow is 0.17 mm, twice as small as the smallest insulin needle. WHAT ALL DOES THE HYALURON PEN DO The Hyaluron Pen creates volume, shape and lift. Treatment areas include: Lips, nasolabial lines, marionette lines, 11 lines, forehead wrinkles. Perfect for lip augmentations and reducing wrinkles."
        
        static let descriptionFacial = ""

    }

    
    struct Picker {
        
        static let brows = ["Powder Brows - 650ron", "Combination - 300ron", "BLX - 80ron", "Henna Brows - 110ron", "Pensat - 40ron", "Microblading - 500ron"]
        static let lashes = ["Lash Lamination - 90ron", "LLX - 50ron", "Color - 40ron"]
        static let lips = ["Hyaluronpen 1.1ml - 650ron"]
        static let facial = ["Golden Facial - 40ron","Microabrasion - 50ron"]
        static let blank = " "
    }
    
    
    struct ServicesVC {
        static let cellIdentifier = "ServiceCell"
        static let sequeServices = "ServiceToDescription"
    }
    
    struct ServiceDescriptionVC {
        static let cellIdentifier = "ServiceDescriptionCell"
    }
    
    struct Contact {
        static let tel = 40732958358
        static let latitude = 44.162581
        static let longitude = 28.606446
        static let regiondistance = 10000.00
        static let web = "https://thebrowhaus.ro"
        static let fb = "fb://profile/browhausconstanta"
        static let insta = "instagram://user?username=browhausconstanta"
        static let instaUrl = "https://www.instagram.com/browhausconstanta/"
        static let whatsapp = "whatsapp://send?text=Hello!"
        static let errortext = "Mail App not configured"
        static let email = "office@thebrowhaus.ro"
        static let textSubject = "Hello!"
        static let textBody = " "
        static let name = "Brow Haus"
        
        
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
        
    }
}
