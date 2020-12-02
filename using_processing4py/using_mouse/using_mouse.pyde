import random

def setup():
    size(512, 512)
    background(255)
    
def draw():
    r = random.randrange(255)
    g = random.randrange(255)
    b = random.randrange(255)
    dim = random.randrange(50)
    x = random.randrange(width)
    y = random.randrange(height)
    fill(r, g, b)
    noStroke()
    ellipse(x, y, dim, dim)
