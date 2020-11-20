# Cloves Paiva
# Random Walker

import random 

class Walker():
    def __init__(self):
        self.x = random.randint(0, width)
        self.y = random.randint(0, height)
    
    def walk(self):
        self.x += random.choice([1, -1])
        self.y += random.choice([1, -1])
        if self.x > width or self.x < 0:
            self.x *= -1
        if self.y > height or self.y < 0:
            self.y *= -1 
        
    def display(self):
        ellipse(self.x, self.y, 1, 1)
        
def setup():
    size(500, 500)
    background(255)
    fill(0)
    global walker
    walker = Walker()
    ellipse(walker.x, walker.y, 1, 1)
    
def draw():
    fill(0)
    walker.walk()
    walker.display()
