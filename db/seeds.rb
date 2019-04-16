# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Habit.destroy_all
UserHabit.destroy_all
UserInstance.destroy_all
UserBook.destroy_all
Activity.destroy_all


kiyana = User.create(name:"Kiyana", username:"kiki", password: "love")

read = Habit.create(name:"Read")
sleep = Habit.create(name:"Sleep")
eat = Habit.create(name:"Eat")

one = UserHabit.create(user: kiyana, habit: read)
two = UserHabit.create(user: kiyana, habit: sleep)
three = UserHabit.create(user: kiyana, habit: eat)



UserInstance.create(user_habit: one, status: false, date: "1-3")
UserInstance.create(user_habit: one, status: false, date: "1-6")
UserInstance.create(user_habit: two, status: false, date: "1-12")
UserInstance.create(user_habit: three, status: false, date: "1-9")
UserInstance.create(user_habit: three, status: false, date: "1-14")
UserInstance.create(user_habit: two, status: false, date: "1-2")
UserInstance.create(user_habit: three, status: false, date: "1-3")
UserInstance.create(user_habit: one, status: false, date: "1-5")
UserInstance.create(user_habit: two, status: false, date: "1-10")



one1 = UserBook.create(user: kiyana, name: "Harry Potter and The Chamber of Secrets", author: "J.K. Rowling", shortname:"Harry Potter", status:true)
two2 = UserBook.create(user: kiyana, name: "The Great Big Land With Everything Forever", author: "Bob Flmming", shortname:"Great Big Land", status:false)
three3 = UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"Books", status: false)
four = UserBook.create(user: kiyana, name: "This is a really long title book oh man", author:"Mary Joanie", shortname:"Whoa Check it Out", status: true)
five = UserBook.create(user: kiyana, name: "Heres another really long title oh man", author:"Mary Jenkins", shortname:"Books", status: true)
six = UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"CookBook", status: true)
seven = UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"Big Book", status: true)
UserBook.create(user: kiyana, name: "I love to read Books with really long titles", author:"Mary Jenkins", shortname:"Big estBook", status: true)




family = Activity.create(name: "Family Time", description: " Spending time with family strengthens family ties. Also, families who enjoy group activities will develop strong relationships and handle stressful situations with ease." , time_expected: "2 hours - 3 hours", image_url: "http://www.stpaulschurchjarrow.com/wp-content/uploads/2018/06/Family-time-3.jpg")
Activity.create(name: "Take the stairs" , description: "If you have stairs at your home or office, take them every chance you get. But don’t stop there. For a strong cardio workout, walk up and down the stairs repeatedly. Start with a limited number of repetitions, then increase them as you feel stronger." , time_expected: "5 minutes", image_url: "https://i.ytimg.com/vi/uoCtRBkuGaI/maxresdefault.jpg")
Activity.create(name: "Drink water" , description: "There are health benefits to drinking more water. It helps keep your temperature normal, lubricates and cushions joints, protects your spinal cord and other sensitive  tissues, and gets rid of wastes through urination, sweat, and bowel movements. You can also add flavor to your water to help up your intake." , time_expected: "1 minute", image_url: "https://fitlifepursuits.com/wp-content/uploads/2016/05/Drink-More-Water.jpg")
Activity.create(name: "Take a walk" , description: "Walk during your lunch hour or to a store that is a block away to buy a gallon of milk — it’s all good for you. Even if it’s cold outside, you can often walk comfortably by dressing right: Start with a sweat-wicking layer next to your body, add insulating layers for warmth, and top them off with a waterproof shell." , time_expected: "10 minutes", image_url: "http://www.fitnowstephanie.com/wp-content/uploads/2015/02/Take-a-Walk.jpg")
Activity.create(name: "Focus on posture" , description: "Having good posture can prevent aches and pain and it can also reduce stress on your ligaments. You can try to leave yourself a note to sit up straight, until it becomes an unconscious habit.Walking with your shoulders back and head held high can also make you feel good about yourself." , time_expected: "Throughout Day", image_url: "http://pediatricanswers.com/wp-content/uploads/2016/06/40829013_m.jpg")
Activity.create(name: "Go to bed early" , description: "Do you sleep a solid seven or eight hours most nights? Many of us don’t but experts say this is a marker of good heart health. Solid sleep doesn’t just give you more energy, it can also help with healthy eating goals. When you’re short on sleep, it reduces your body’s production of hormones that suppress appetite, which can contribute to weight gain." , time_expected: "30 minutes", image_url: "http://2.bp.blogspot.com/-unTo7eqqOZ4/T48BL_G4N8I/AAAAAAAAA4A/7dOkIS2Of9w/s1600/Sleeping-762095.jpg")
Activity.create(name: "No Soda" , description: "If you drink diet soda each day, use carbonated mineral water to help wean yourself off of it. Research suggests the brain reacts to artificial sweeteners much like it does to sugary sweets. Ingesting them frequently can increase your desire for high-calorie foods and put you at risk for weight gain." , time_expected: "", image_url: "https://miltonhooper.files.wordpress.com/2018/02/no-soda.png?w=845")
Activity.create(name: "Increase Balance" , description: "Balance on one leg for 10 seconds at a time, then switch to the other leg
This simple exercise is something you can do while brushing your teeth or standing in a line. It’s a part of neuromotor training, which helps you improve your balance, agility and mobility — all things you need in everyday movement and in other forms of exercise." , time_expected: "Throughout Day", image_url: "https://www.mclaren.org/Uploads/Public/Images/Northern/balance%20screening.jpg")
Activity.create(name: "Weigh yourself" , description: "To keep your weight from creeping up on you, set a weekly maintenance or loss goal for yourself, write it down, and check yourself against that goal. Weigh yourself each week on the same day and at the same time – and wearing the same amount of clothing for consistency." , time_expected: "weekly", image_url: "http://walkingoffpounds.com/wp-content/uploads/2017/01/bathroom_scale_concept_black-541x437.png")
Activity.create(name: "Eat a breakfast" , description: "Eat something high in fiber that includes protein to keep you full and energized. If you start the day out right, you tend to eat better overall. Tired of the same bowl of oatmeal? Add different toppings to make it more exciting." , time_expected: "20 minutes", image_url: "http://worldartsme.com/images/healthy-breakfast-clipart-1.jpg")
Activity.create(name: "Eat Vegetables" , description: "Incorporate lettuce into your meals to add nutrients and water to your diet. The fiber in lettuce helps to fill you up, and it does so at just 20 calories per serving. Lettuces that are dark green and reddish in color are the most nutritious and the most flavorful.  But even the popular, pale iceberg lettuce provides water, fiber and folate." , time_expected: "10 minutes", image_url: "https://i.ytimg.com/vi/poE8jWpMPzw/maxresdefault.jpg")
Activity.create(name: "Go Offline" , description: "Checking your email and social media a lot? Sure, your friends' and family's latest updates are just a click away, but do you really need to see pictures of your cousin's latest meal? Let it wait until morning. Set a time to log off and put the phone down. When you cut back on screen time, it frees you to do other things. Take a walk, read a book, or help your cousin chop veggies for her next great dinner" , time_expected: "20 minutes", image_url: "https://fcw.com/~/media/GIG/FCWNow/Topics/Mobility/nophones.jpg")
