# README
Space Base is a casual sim game where players collect and spend resources to expand their base. Resources are accrued passively over time, but players may also play an "Explore" game mode to gain more resources. This game mode is similar to "Flappy Bird," where the player must click the screen to keep their space ship flying; the longer they fly, the more resources they gain. The amount of resources gained passively is determined by how well the player meets the demands of their base: at least one "Food" and one "Housing" Unit in their base per five population. The overall satisfaction level of the player's base determines their happiness score, which, if high enough, will lead to the base's population to increase.

Currently, in addition to "Food" and "Housing," there are also "Defense" and "Service" Units as well, which provide their own benefits. The Defense level of the base must match the population, while "Service" Units provide extra resources over time. If the above requirements are not met, players will be penalized and their happiness and population will decrease. Furthermore, there are certain events that may occur at random that either benefit the player's base or hurt them in some way. There is no true ending for the game in its current version, but players with the best stats are listed on the Leaderboard page.

The backend was developed on Ruby 2.5.1 and Rails 5.2.2, and uses Active Model Serializers and a PostgreSQL Database. For basic auth, BCrypt and JWT were used as well. No seeding is necessary once the database is created and migrated. Each User has one Tower, which can have many floors. Each floor can then have two Shops. RESTful Routing paradigms were closely followed, but as the previously mentioned ratios are always the same (One User: One Tower; One Floor: Two Shops), conventions were slightly broken in the User Controller and Floor Controller.

The frontend repo can be found here:
https://github.com/mkim4247/Space-Base-Frontend

Below is a demo of the app:
https://www.youtube.com/watch?v=NDAQZnKKTzg
