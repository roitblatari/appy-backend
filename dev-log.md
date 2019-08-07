# A Happiness Platf
## How It Works
<ul><li>Take a selfie 
when you make
someone happy

<li>Tag the person you
“Appied” and
challenge them to pay
it forward

<li>See a totally
awesome visual (of
the ripple effect) 
</ul>

# Models

## User
- "username": string
- "uid": string
- "email": email
- "image_url": string
- "password_digest": string
- "created_at", null: false :datetime
#### has many deeds
#### has many users through deeds


## Deed
-  "deedname": string
- "content": string
- giver_id: string
- receiver_id: string
#### belongs_to :user


# Todo
- check models -
- serializer -
- create react app 
- delete session
- sign up
- user show page
- deed form

