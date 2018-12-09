from basics.Functions_and_libs_3.exchange_lib.exchange import Rate


class MyRate(Rate):

    def __init__(self, format="name_only", diff=False):
        super(MyRate, self).__init__(format)
        self.__diff = diff
        self.__response = self.exchange_rates()

    def make_format(self, currency):
        if currency in self.__response:
            if self.format == "name_only":
                return self.__response[currency]["Name"]

    def usd(self):
        if not self.__diff:
            return self.make_format('usd'.upper())
        else:
            return self.__getDiff('usd'.upper())

    def eur(self):
        if not self.__diff:
            return self.make_format('eur'.upper())
        else:
            return self.__getDiff('eur'.upper())

    def __getDiff(self, currency):
        return self.__response[currency]["Value"] - self.__response[currency]["Previous"]
