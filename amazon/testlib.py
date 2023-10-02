from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Test:
    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")
    @keyword
    def hello(self):
        print("hello world")
        self.selLib.get_webelements()
