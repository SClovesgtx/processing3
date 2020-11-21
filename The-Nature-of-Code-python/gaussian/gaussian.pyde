# Cloves Paiva
# A Mancha Gaussiana
# 21/11/2020

import random 

def setup():
    size(1000, 500)
    background(255)
    x = random.gauss(width/2, width/10)
    y = random.gauss(height/2, height/10)
    fill(0, 0, 0, 1)
    ellipse(x, y, 10, 10)
    
def draw():
    x = random.gauss(width/2, width/5)
    y = random.gauss(height/2, height/5)
    fill(0, 0, 0, 127)
    ellipse(x, y, 10, 10)
    
