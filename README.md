# University Student Shop (Flutter App)

## 1. Union Shop

**University Student Shop**

A Flutter-based mobile application that simulates a university student shop experience.

---

## 2. Project Description

This Flutter application recreates a university student shop where users can browse products, view details, add items to a cart.

### Purpose

- Recreate the univercty student union shop using Dart/Flutter
- Serve as a university project showcasing UI design, state management, and navigation.
- Simulate how a real on-campus student shop app could function.

### What the App Simulates

- A digital version of a university campus shop.
- Browsing categories such as clothing, merch, and university merchandise.
- Managing a shopping cart and going through a non‑real (simulated) checkout.
- Optional login/authentication to personalize the experience.

### Target Users

- University students
- Academic and administrative staff
- Campus visitors

### Summary of Features

- Product catalog with images, prices, and descriptions
- Product categories for easy navigation
- Product Filters 
- Shopping cart with add/remove/update quantity
- Optional login and basic authentication flow
- Responsive UI for different mobile screen sizes


---

## 3. Features

- **Product listing**
  - Product images
  - Name, price, and short description
  - Category tags (e.g. Clothing, Stationery, Merch)
- **Product details page**
  - Larger image and full description
  - Add to cart button
- **Shopping cart**
  - View selected items
  - Update quantity
  - Remove items
  - Cart total calculation
- **Colection Page**
  - Move between collection
  - Filter products
  - View a product
 - **Print Shack**
  - Select custmisation type
  - Provide custmisation specfics and quanity
  - Add customisation to cart

---

## 4. Installation & Setup

### Prerequisites

- Flutter SDK installed  
  Recommended: **Flutter 3.x** or later
- Dart SDK (bundled with Flutter)  
  Recommended: **Dart 2.17+**
- VS Code with Flutter & Dart plugins
- Android SDK and/or Xcode (for iOS)
- A physical device or emulator/simulator

### Clone & Run

```bash
git clone https://github.com/Oskar-Wieczorek-2005/union_shop
cd union_shop
flutter pub get
flutter run
```

Add any new asset folders or fonts to `pubspec.yaml` as needed.

---

## 5. Project Structure


```text
union_shop/
│
├── assets/
│   └── images/                     # Local image assets used throughout the app
│
├── lib/
│   ├── models/                     # Data models for application logic
│   │   ├── cart_model.dart             # Cart item structure + cart logic
│   │   └── product_model.dart          # Product model (title, price, image, etc.)
│   │
│   ├── about_page.dart             # About page (correctly placed in /lib)
│   ├── cart_page.dart              # Shopping cart screen
│   ├── collections_page.dart       # Product collections / categories page
│   ├── login_in_page.dart          # Login screen UI
│   ├── main.dart                   # Main entry point of the Flutter app
│   ├── printshack_about_page.dart  # About page for PrintShack brand/section
│   ├── printshack_page.dart        # PrintShack products page
│   ├── product_page.dart           # Individual product details screen
│   └── sales_page.dart             # Sales / featured products page
│
├── test/                           # Widget and unit tests
│   ├── about_page_test.dart
│   ├── cart_test.dart
│   ├── collections_page_test.dart
│   ├── home_test.dart
│   ├── printshack_about_page_test.dart
│   ├── printshack_page_test.dart
│   ├── product_test.dart
│   └── sales_page_test.dart
├── android/                        # Android platform files
├── ios/                            # iOS platform files
├── linux/                          # Linux desktop build support
├── macos/                          # macOS desktop build support
├── web/                            # Web build support
├── windows/                        # Windows desktop build support
├── screenshots/                    # screenshots of file running
├── README.md                       # Project documentation 
├── .gitignore                      # Files ignored by Git
├── analysis_options.yaml           # Linting and code-style rules
├── pubspec.yaml                    # Dependencies, fonts, assets, metadata
└── pubspec.lock                    # Locked dependency versions

```

Adjust this to match your actual structure.

---

## 6. Technologies Used

- **Flutter** (UI toolkit)
- **Dart** (programming language)
- **VS Code** (Progrma edditor)
- **Copilot** (AI coding Assistant)
- **Github** (Version Control)

---

## 7. Screenshots

Place screenshots in a `screenshots/` folder and reference them here:

```markdown
![Home Page_1](screenshots/homePage_1.png)
![Home Page_2](screenshots/homePage_2.png)
![Product Page](screenshots/productPage_1.png)
![Cart Page](screenshots/cartPage_1.png)
![Collections Page_1](screenshots/collections_1.png)
![Collections Page_2](screenshots/collections_2.png)
![Sales Page](screenshots/sales_1.png)
![PrintShack Page](screenshots/printshack_1.png)
```


---

## 8. How It Works (Technical Overview)

### Product Data

- Products are stored either as:
  - A local Dart list 
- Each product typically has:
  -  `name`, `description`, `price`, `imagePath`, `category`
  - Each product is put in one or many collection lists

### Cart System

- Cart maintains a list of items with:
  - `product`, `quantity`, and derived `totalPrice`.
- Core operations:
  - `addToCart(product)`
  - `removeFromCart(productId)`
  - `updateQuantity(productId, quantity)`
  - `clearCart()`
- Cart total = sum of `item.price * item.quantity`.


### Navigation

- Uses Flutter’s `Navigator`:
  - Named routes (e.g. `/`, `/product`, `/cart`, `/checkout`, `/login`)  

- Typical flows:
  - Home Page → Collection page
  - Collection page  → Product Page
  - Product Page → Cart Page


## 9. Known Issues / Limitations

- No real backend or payment gateway (checkout is only a simulation).
- Product images may be stored locally in `assets/` instead of a CDN.
- Authentication is basic and intended for demonstration.
- Limited error handling for network/API failures (if applicable).
- No full order history or email confirmation.

---

## 10. Future Improvements

- Integrate real payments (e.g. Stripe).
- Use a real online database (Firebase / Supabase / custom API).
- Add user profiles with order history and saved addresses.
- Implement wishlist / favourites.
- Advanced search and filtering (price range, availability, ratings).
- Dark mode and advanced theming.

---

## 11. Credits

- Developed by: Oskar Wieczorek
- University: Univecity of Portsmouth
- Course / Module: Computer Science - Programming Aplications and Programing Languages
- Supervisor / Lecturer: Dr. Mani Ghahremani
Additional acknowledgements:

- Flutter and Dart teams for the framework.
- Open-source packages and libraries listed in `pubspec.yaml`.
