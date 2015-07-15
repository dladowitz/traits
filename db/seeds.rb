# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create [{first_name: "David",  last_name: "Ladowitz", email: "david@ladowitz.com", admin: true,  password: "asdfasdf"},
                     {first_name: "Teresa", last_name: "Huang",    email: "teresa@gmail.com",   admin: false, password: "asdfasdf"}
                    ]
puts ".....Created #{users.length} users."
founders = Founder.create [{name: "Hiten Shaw",
                            image_url: "http://leanstartupconference.startupweekend.org/files/2013/11/Hiten.png",
                            quote: "You make your own luck. Every single minute of every day.",
                            traits_attributes: [{name: "Intuition"}, {name: "Insight"}, {name: "Reading Situations Fast"}]
                            },
                            {name: "Rick Marini",
                              image_url: "http://www.t4a.org/wp-content/uploads/2013/03/rick-marini-230x230.jpg",
                              quote: "Find your technology soulmate.",
                              traits_attributes: [{name: "Integrity"}, {name: "Hard Working"}, {name: "Good Attitude"}]
                            },
                            {name: "Elon Must",
                              image_url: "http://static.nautil.us/4633_96c974552b3f2839fcc751e7f12679ce.jpg",
                              quote: "...or do you want to come with me and change the world?",
                              traits_attributes: [{name: "Leadership"}, {name: "Vision"},{name: "Influence"}]
                            },
                            {name: "Vincent Huang",
                              image_url: "http://vhacorp.com/wp-content/uploads/2015/03/Vincent-Huang_1-300x300.jpg",
                              traits_attributes: [{name: "Focus"}, {name: "Persistance"}]
                            },
                            {name: "Steve Jobs",
                              image_url: "http://static4.businessinsider.com/image/51def664ecad04384c00000a/elon-musk-the-hyperloop-design-is-coming-august-12.jpg",
                              quote: "I could either watch it happen or be a part of it.",
                              traits_attributes: [{name: "Self analysis"}, {name: "Critical thinking"},{name: "Open to risk"}]
                            },
                          ]
puts ".....Created #{founders.length} founders."
