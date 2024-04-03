from fastapi import FastAPI


app = FastAPI()


class myclass:
    pass


def sum_of_two_numbers(a: int, b: int):
    return a + b


if __name__ == "__main__":
    new_b = 3
    c = 45
    res = sum_of_two_numbers(a, new_b)
    see = sum_of_two_numbers(a=3, b="a")

    see2 = sum_of_two_numbers(5)

    if see2 == 5:
        print("first")
        print("second")
        print("third")

    see3 = sum_of_two_numbers:
    print(res)

m = [1, 2, 3]

d = m + [sum_of_two_numbers(3, 4)]
