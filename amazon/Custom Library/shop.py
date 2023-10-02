from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class shop:
    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def hello_world(self):
        print("hello")

    @keyword
    def select_items_to_the_cart(self, productlist):
        products_titles = self.selLib.get_webelements("css:h4[class='card-title']")
        i = 1
        for product in products_titles:
            if product.text in productlist:
                self.selLib.click_button("xpath:(//*[@class='btn btn-info'])[" + str(i) + "]")
            i = i + 1

    @keyword
    def check_the_prodcuts_in_the_cart(self, productlist):
        products = self.selLib.get_webelements("css:h4.media-heading")
        L1 = []
        for product in products:
            L1.append(product.text)

        productlist.sort()
        L1.sort()
        if productlist == L1:
            self.selLib.click_element("css:button.btn-success")
