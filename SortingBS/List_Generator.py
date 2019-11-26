import random


def list_gen():
    return [random.sample(range(1000), 500), [random.choice(range(11)) for i in range(500)]]
