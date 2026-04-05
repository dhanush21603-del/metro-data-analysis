print("Project Started")

import pandas as pd

# load json data
df = pd.read_json('../data/delhi_metro_trips.json')
pd.set_option('display.max_columns',None)

# show first 5 rows
print("First 5 rows:")
print(df.head())
print(df.columns)

# show info
print("\n Dataset info:")
print(df.info())

# removing extra spaces
df['From_Station'] = df['From_Station'].str.strip()
df['To_Station'] = df['To_Station'].str.strip()

# store cleaned data
df.to_csv('../data/cleaned_metro_data.csv',index = False)
print("Data cleaning completed and saved")


