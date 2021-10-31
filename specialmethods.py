class Employee:
    # https: // docs.python.org / 3 / reference / datamodel.html  # special-method-names
    def __init__(self, first, last, pay):
        self.first = first
        self.last = last
        self.email = first + '.' + last + '@email.com'
        self.pay = pay

    def fullname(self):
        return '{} {}'.format(self.first, self.last)

    # developer , debugging
    def __repr__(self):
        return f"Employee({self.first}. {self.last},{self.email},{self.pay})"


    def __str__(self):
        return f"{self.first}"

    # operator overloading
    def __add__(self, other):
        return self.pay + other.pay



emp_1 = Employee('Noha', 'Shehab', 50000)
emp_2 = Employee('Test', 'Employee', 60000)

print(emp_1)
# print(repr(emp_2))
# print(str(emp_2))

print(emp_1.__repr__())
print(emp_1.__str__())

# print(1+2)
# # this like
# print(int.__add__(1,3))
# print("Noha"+"Shehab")
# print(str.__add__("Noha", "Shehab"))
print(emp_1 + emp_2)
print("noha".__len__())
