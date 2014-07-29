Notes
7-29-14

core site behavior

Outfit diary purpose:

  - (mvp) Know what you wore in the past
  - (optional) Know who saw you in which outfits
  - (optional) Know where you were via google maps

models

  - clothing_articles
    - id
    - description
    - color
    - clothing_type_id
  - clothing_types
    - id
    - type
  - clothing_article_outfits (join table between clothing and outfits)
    - id
    - clothing_type_id
    - outfit_id

  - outfit
    - id
    - date
    - (maybe) location
    - (maybe) people

  - (later) users
    - id
    - name

mvp

  - core interactions

later
  
  - picture support (upload pic of your outfit)

requirements

  - inputs for outfit entries
    - category (clothing types)
    - a list of all outfits you've entered
    - assign a date to when you wore the outfit