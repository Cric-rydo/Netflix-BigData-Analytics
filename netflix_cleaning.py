import pandas as pd

# Load raw Netflix dataset
df = pd.read_csv("netflix_titles.csv")

# Handle missing values
df['director'] = df['director'].fillna("Unknown")
df['cast'] = df['cast'].fillna("Unknown")
df['country'] = df['country'].fillna("Unknown")
df['rating'] = df['rating'].fillna("Not Rated")

# Convert date_added to datetime
df['date_added'] = pd.to_datetime(df['date_added'], errors='coerce')

# Extract year from date_added
df['year_added'] = df['date_added'].dt.year

# Split duration into number and type
df['duration_num'] = df['duration'].str.extract('(\d+)')
df['duration_type'] = df['duration'].str.extract('([A-Za-z]+)')

# Save cleaned data
df.to_csv("netflix_cleaned.csv", index=False)

print("Data cleaning completed successfully!")
