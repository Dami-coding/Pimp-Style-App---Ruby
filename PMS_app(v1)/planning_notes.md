## Users/Clients
- has_many :bookings
- has many Barber shops, through Bookings


- first_name:string
- last_name:string
- email:string
- password:string
- confirm_password:string
- bio:text
- image:text




## Bookings
- belongs_to :users


= location:string
- select_date:date
- select_time:time





## Barber Shops
- has_and_belongs_to :users
- has_many :Bookings, through: :users

- name:string
- description:text
- image:text



## Likes
- belongs_to :users
- belongs_to :gallery through :user
- belongs_to :user

- user:references
- description:text
- estimated_delivery:date




