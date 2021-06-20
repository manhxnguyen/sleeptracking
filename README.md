# README

Ruby version 3.0.1-p64

Rails version 6.1.3.2

Use curl for testing:

Create user: curl -X POST 'http://localhost:3000/users/' -d name='Tom Jerry'    # 'Tom Jerry' is name of user

User follow: curl -X POST 'http://localhost:3000/users/1/follow' -d follower=2  # 1,2 are user_id, user with id = 2 follow user with id = 1

Unfollow: curl -X DELETE 'http://localhost:3000/users/1/unfollow' -d follower=2 # 1,2 are user_id, user with id = 2 unfollow user with id = 1

User clock-in: curl -X POST 'http://localhost:3000/users/1/clock_in

Get sleeprecords for user with id: curl -X GET 'http://localhost:3000/users/1/sleep_records'

Get sleeprecords for followees of user over the past week: curl -X GET 'http://localhost:3000/users/1/followee_records'
