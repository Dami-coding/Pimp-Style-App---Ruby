## Users
- has_many :photos
- has_many :gallery
- has_many :likes through: :photo

- first_name:string
- last_name:string
- username:string
- password:string
- bio:text
- image:text

## Photos
- belongs_to :user
- belongs_to :gallery
- has_many :gallery

- name:string
- description:text
- image:text
- user:references
- gallery:references

## Gallery
- belongs_to :user
- has_many: photos
- has_many :photos, through: :user

- name:string
- description:text
- image:text
- user:references
- gallery:references

## Likes
- belongs_to :user
- belongs_to :gallery through :user
- belongs_to :user

- user:references
- description:text
- estimated_delivery:date






*- user:references
- reward:references

