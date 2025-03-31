import pandas as pd
import time


df = pd.read_csv('/home/labs/drake/cs369/answers.csv')
print(df.to_string())
time.sleep(5)
# output example
f = open("sample.txt", "a")
f.write("Here is some content!")
f.close()
