import numpy as np

data = np.loadtxt('model_list.txt', dtype=str)
test_data = np.random.choice(data, 90)
a_file = open("val.txt", "w")
for row in test_data:
    a_file.write(row+"\n")