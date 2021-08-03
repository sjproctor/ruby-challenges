# Challenges: Hashes

# As a developer, I can create a hash called my_phone using the Ruby method `.new`.
p my_phone = {}

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:nike_run_club] = 'an app for tracking running distance and total miles'
my_phone[:slack] = 'an app for connecting with coworkers and students'
my_phone[:spotify] = 'an app for listening to music and podcasts'
my_phone[:instagram] = 'a social media app for viewing pictures posted by friends and celebrities'
my_phone[:words_with_friends] = 'an app for playing scrabble with friends'

p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.
p my_phone[:words_with_friends]

# As a developer, I can update two keys in my_phone.
# hash[:new_key] = hash.delete :old_key
my_phone[:words] = my_phone.delete :words_with_friends
my_phone[:nike] = my_phone.delete :nike_run_club

p my_phone

# As a developer, I can update two values in my_phone.
my_phone[:words] = 'an app for playing virtual scrabble with friends'
my_phone[:instagram] = 'a social media app for viewing pictures posted by friends'

p my_phone

# As a developer, I can delete two key:value pairs from my_phone.
my_phone.delete(:instagram)
my_phone.delete(:words)

p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

my_phone.each do |key, value|
  p "I have the app #{key} that is #{value}."
end

# Stretch Challenges
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.

def my_apps(hash)
  hash.map do |key, value|
    "I have the app #{key.capitalize} that is #{value}."
  end
end

p my_apps my_phone
