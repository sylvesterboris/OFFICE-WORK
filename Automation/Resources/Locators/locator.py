# login
username_input = "id:user-name"
password_input = "id:password"
login_button = "id:login-button"

# homepage
product_label = "xpath://span[text()='Products']"
menu_button = "id:react-burger-menu-btn"
inventory_sidebar_link = "id:inventory_sidebar_link"

# products
backpack_add_btn = "id:add-to-cart-sauce-labs-backpack"
fleece_jacket_add_btn = "id:add-to-cart-sauce-labs-fleece-jacket"
bike_light_add_btn = "id:add-to-cart-sauce-labs-bike-light"
bolt_tshirt_add_btn = "id:add-to-cart-sauce-labs-bolt-t-shirt"

# cart
cart_icon = "xpath://*[@id='shopping_cart_container']/a"
cart_item = "xpath://div[@class='cart_item']"
remove_button = "xpath://button[@class='btn btn_secondary btn_small cart_button']"
checkout_button = "xpath://*[@id='checkout']"

# checkout
first_name_input = "id:first-name"
last_name_input = "id:last-name"
postal_code_input = "id:postal-code"
continue_button = "xpath://*[@id='continue']"
summary_total_label = "xpath://*[@id='checkout_summary_container']/div/div[2]/div[5]"
shipping_info_label = "xpath://div[@class='summary_value_label'][2]"
item_names = "xpath://div[@class='inventory_item_name']"
item_prices = "xpath://div[@class='inventory_item_price']"
subtotal_label = "xpath://div[@class='summary_subtotal_label']"
finish_button = "id:finish"

# confirmation
confirmation_header = "xpath://h2[text()='Thank you for your order!']"
confirmation_text_1 = "Your order has been dispatched"
confirmation_text_2 = "Checkout: Complete!"
back_to_products_button = "xpath://*[@id='back-to-products']"


#VERIFY
backpack_add_btn = "id:add-to-cart-sauce-labs-backpack"
cart_icon = "xpath://*[@id='shopping_cart_container']/a"
checkout_button = "xpath://*[@id='checkout']"
first_name_input = "id:first-name"
last_name_input = "id:last-name"
postal_code_input = "id:postal-code"

# Product prices
bike_light_price = "xpath://div[contains(text(),'Sauce Labs Bike Light')]/../../div[@class='pricebar']/div"
backpack_price = "xpath://div[contains(text(),'Sauce Labs Backpack')]/../../div[@class='pricebar']/div"
bolt_tshirt_price = "xpath://div[contains(text(),'Sauce Labs Bolt T-Shirt')]/../../div[@class='pricebar']/div"