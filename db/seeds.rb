anxiety_tag = Tag.find_or_create_by(name: 'Anxiety')
acceptance_tag = Tag.find_or_create_by(name: 'Acceptance')
assurance_tag = Tag.find_or_create_by(name: 'Assurance')
belief_tag = Tag.find_or_create_by(name: 'Belief')
blessings_tag = Tag.find_or_create_by(name: 'Blessings')
confidence_tag = Tag.find_or_create_by(name: 'Confidence')
courage_tag = Tag.find_or_create_by(name: 'Courage')
depression_tag = Tag.find_or_create_by(name: 'Depression')
encouragement_tag = Tag.find_or_create_by(name: 'Encouragement')
faith_tag = Tag.find_or_create_by(name: 'Faith')
fear_tag = Tag.find_or_create_by(name: 'Fear')
friendship_tag = Tag.find_or_create_by(name: 'Friendship')
gratitude_tag = Tag.find_or_create_by(name: 'Gratitude')
grief_tag = Tag.find_or_create_by(name: 'Grief')
guilt_tag = Tag.find_or_create_by(name: 'Guilt')
health_tag = Tag.find_or_create_by(name: 'Health')
inspiration_tag = Tag.find_or_create_by(name: 'Inspiration')
kindness_tag = Tag.find_or_create_by(name: 'Kindness')
loneliness_tag = Tag.find_or_create_by(name: 'Loneliness')
love_tag = Tag.find_or_create_by(name: 'Love')
peace_tag = Tag.find_or_create_by(name: 'Peace')
prayer_tag = Tag.find_or_create_by(name: 'Prayer')
protection_tag = Tag.find_or_create_by(name: 'Protection')
provision_tag = Tag.find_or_create_by(name: 'Provision')
respect_tag = Tag.find_or_create_by(name: 'Respect')
salvation_tag = Tag.find_or_create_by(name: 'Salvation')
serving_tag = Tag.find_or_create_by(name: 'Serving')
stress_tag = Tag.find_or_create_by(name: 'Stress')
trust_tag = Tag.find_or_create_by(name: 'Trust')
truth_tag = Tag.find_or_create_by(name: 'Truth')
worry_tag = Tag.find_or_create_by(name: 'Worry')




# Additional verses merged from line 251+
bible = {
  "Romans": {
    "5": {
      "8": {
        "OEB": "Therefore always receive one another as friends, just as the Christ himself received us, to the glory of God.",
        "tags": [acceptance_tag]
      },
      "1": {
        "OEB": "May God, who inspires our hope, grant you perfect happiness and peace in your faith, until you are filled with this hope by the power of the Holy Spirit.",
        "tags": [inspiration_tag, peace_tag]
      }
    },
    "8": {
      "38": {
        "OEB": "For I am persuaded that neither death, nor life, nor angels, nor archangels, nor the present, nor the future, nor any powers, nor height, nor depth, nor any other created thing, will be able to separate us from the love of God revealed in Christ Jesus, our Lord!",
        "tags": [anxiety_tag, depression_tag, loneliness_tag]
      },
      "16": {
        "OEB": "nor height, nor depth, nor any other created thing, will be able to separate us from the love of God in Christ Jesus our Lord.",
        "tags": [assurance_tag]
      },
      "15": {
        "OEB": "For you did not receive the spirit of a slave, to fill you once more with fear, but the spirit of adopted children, in which we cry ‘Abba, our Father.’",
        "tags": [fear_tag]
      },
      "1": {
        "OEB": "since all have sinned, and all fall short of God’s glorious ideal,",
        "tags": [guilt_tag]
      },
      "26": {
        "OEB": "rejoicing in your hope; steadfast under persecution; persevering in prayer;",
        "tags": [prayer_tag]
      },
      "31": {
        "OEB": "What then are we to say to all this? If God is on our side, who can be against us?",
        "tags": [protection_tag]
      },
      "32": {
        "OEB": "God did not spare his own Son, but gave him up for us all; and with him will he not freely give us all things?",
        "tags": [provision_tag]
      },
      "6": {
        "OEB": "To be earthly-minded means death; to be spiritual-minded means life and peace;",
        "tags": [stress_tag]
      }
    },
    "10": {
      "9": {
        "OEB": "The divine righteousness comes through faith in Jesus Christ, and is for all who believe in him. There is no distinction between them,",
        "tags": [belief_tag]
      }
    },
    "15": {
      "4": {
        "OEB": "And may God, the giver of this patience and this encouragement, grant you to be united in sympathy in Christ,",
        "tags": [encouragement_tag]
      },
      "13": {
        "OEB": "May the God of hope fill you with all joy and peace in believing, so that by the power of the Holy Spirit you may abound in hope.",
        "tags": [trust_tag]
      }
    },
    "1": {
      "17": {
        "OEB": "He did not for a moment falter in his faith at God's promise. Instead, his faith gave him strength; and he praised God,",
        "tags": [faith_tag]
      },
      "16": {
        "OEB": "I ask, then, ‘Was their stumbling to lead to their ruin?’ Heaven forbid! On the contrary, through their falling away salvation has happened to the Gentiles, to arouse the jealousy of Israel.",
        "tags": [salvation_tag]
      },
      "25": {
        "OEB": "For they exchanged the truth about God for a lie, and worshiped and served the creature rather than the Creator – who is blessed forever. Amen.",
        "tags": [truth_tag]
      }
    },
    "12": {
      "10": {
        "OEB": "In paying taxes, give to everyone what is due: taxes to whom taxes are due, toll to whom tolls are due, respect to whom respect is due, honour to whom honour is due.",
        "tags": [friendship_tag, respect_tag]
      },
      "15": {
        "OEB": "Rejoice with those who are rejoicing, and weep with those who are weeping.",
        "tags": [grief_tag]
      },
      "9": {
        "OEB": "Love never wrongs a neighbor. Therefore love fully satisfies the law.",
        "tags": [love_tag]
      },
      "11": {
        "OEB": "The person who serves the Christ in this way pleases God, and wins the approval of their fellows.",
        "tags": [serving_tag]
      }
    },
    "2": {
      "4": {
        "OEB": "Or is it that you think lightly of his abundant kindness, patience, and forbearance, not realizing that his kindness is meant to lead you to repentance?",
        "tags": [kindness_tag]
      }
    }
  },
  "Psalms": {
    "23": {
      "1": {
        "OEB": "He gives to the cattle their food, to the young ravens when they cry.",
        "tags": [acceptance_tag, inspiration_tag, provision_tag]
      },
      "6": {
        "OEB": "Though he fall, he shall not be utterly cast down; for the Lord upholds him with his hand.",
        "tags": [assurance_tag]
      },
      "4": {
        "OEB": "He heals the broken in heart, and binds up their wounds.",
        "tags": [loneliness_tag]
      }
    },
    "55": {
      "22": {
        "OEB": "When my anxious thoughts multiply within me, your comforts delight my soul.",
        "tags": [anxiety_tag, worry_tag]
      }
    },
    "1": {
      "1": {
        "OEB": "Happy all who fear the Lord, who walk in his ways.",
        "tags": [blessings_tag]
      }
    },
    "27": {
      "3": {
        "OEB": "It is better to take refuge in the Lord than to put any trust in princes.",
        "tags": [confidence_tag]
      },
      "14": {
        "OEB": "Be strong, and let your heart be courageous, all you whose hope is in the Lord.",
        "tags": [courage_tag]
      },
      "1": {
        "OEB": "I sought the Lord, and, in answer, he saved me from all my terrors.",
        "tags": [fear_tag]
      }
    },
    "34": {
      "17": {
        "OEB": "God is our refuge and strength, a very present help in trouble.",
        "tags": [depression_tag]
      },
      "18": {
        "OEB": "And when my way lies through a valley of gloom, I fear no evil, for you are with me. Your rod and your staff comfort me.",
        "tags": [grief_tag]
      }
    },
    "100": {
      "4": {
        "OEB": "Hallelujah! Give thanks to the Lord for his goodness, for his kindness endures forever.",
        "tags": [gratitude_tag]
      }
    },
    "32": {
      "5": {
        "OEB": "Far as is east from the west has he put our transgressions from us.",
        "tags": [guilt_tag]
      }
    },
    "6": {
      "2": {
        "OEB": "He heals the broken in heart, and binds up their wounds.",
        "tags": [health_tag]
      }
    },
    "136": {
      "1": {
        "OEB": "Give thanks to the Lord for his goodness: for his kindness endures forever.",
        "tags": [love_tag]
      }
    },
    "4": {
      "8": {
        "OEB": "In vain do you rise up early, and finish so late your sitting, eating the bread of hard toil: he supplies his beloved while sleeping.",
        "tags": [peace_tag, stress_tag]
      },
      "1": {
        "OEB": "The Lord is near to all who call him, to all who call upon him in truth.",
        "tags": [prayer_tag]
      }
    },
    "3": {
      "3": {
        "OEB": "O Lord my God, my giver of strength, you did cover my head in the day of battle.",
        "tags": [protection_tag]
      },
      "8": {
        "OEB": "The Lord is my strength and my song, and he is become my salvation.",
        "tags": [salvation_tag]
      }
    },
    "119": {
      "15": {
        "OEB": "I will muse upon your precepts, and look to your paths.",
        "tags": [respect_tag]
      }
    },
    "2": {
      "11": {
        "OEB": "Serve the Lord with gladness, approach him with ringing cries.",
        "tags": [serving_tag]
      }
    },
    "37": {
      "3": {
        "OEB": "Let me hear in the morning of your steadfast love, for in you I trust. Make me know the way I should go, for to you I lift up my soul.",
        "tags": [trust_tag]
      }
    }
  },
  "Ephesians": {
    "1": {
      "4": {
        "OEB": "For it is by God’s loving kindness that you have been saved, through your faith. It is not due to yourselves; the gift is God’s.",
        "tags": [acceptance_tag]
      },
      "13": {
        "OEB": "For it is by God’s loving kindness that you have been saved, through your faith. It is not due to yourselves; the gift is God’s.",
        "tags": [assurance_tag, salvation_tag]
      },
      "3": {
        "OEB": "Blessed be the God and Father of our Lord Jesus Christ, who has blessed us on high with every spiritual blessing, in Christ.",
        "tags": [blessings_tag]
      },
      "7": {
        "OEB": "It is in this Christ that we gain our freedom, by the shedding of his blood – so rich was God’s loving kindness,",
        "tags": [guilt_tag]
      }
    },
    "2": {
      "8": {
        "OEB": "At every onslaught take up faith for your shield; for with it you will be able to extinguish all the flaming arrows of the evil one.",
        "tags": [belief_tag, faith_tag]
      },
      "10": {
        "OEB": "For we are God’s handiwork, created, by our union with Christ Jesus, for the good actions in doing which God had pre-arranged that we should spend our lives.",
        "tags": [inspiration_tag]
      },
      "14": {
        "OEB": "and striving to maintain the unity of the Spirit, bound together by the bond of peace.",
        "tags": [peace_tag]
      }
    },
    "3": {
      "12": {
        "OEB": "And in union with Christ Jesus, and through our faith in him, we receive courage and confidence of access.",
        "tags": [confidence_tag]
      }
    },
    "6": {
      "10": {
        "OEB": "For the future, find strength in your union with the Lord, and in the power which comes from his might.",
        "tags": [courage_tag]
      },
      "22": {
        "OEB": "This is the very reason why I send him to you, to tell you all about us, and to encourage you.",
        "tags": [encouragement_tag]
      },
      "18": {
        "OEB": "Pray in spirit at all times. Be intent on this, with unwearying perseverance and supplication for all Christ’s people –",
        "tags": [prayer_tag]
      },
      "7": {
        "OEB": "Give your service heartily, as if serving the Lord and not mere people;",
        "tags": [serving_tag]
      }
    },
    "4": {
      "2": {
        "OEB": "Husbands, love your wives, just as the Christ loved the church, and gave himself for her,",
        "tags": [friendship_tag, love_tag]
      },
      "32": {
        "OEB": "Be kind to one another, tender-hearted, ready to forgive one another, just as God, in Christ, forgave you.",
        "tags": [kindness_tag]
      },
      "25": {
        "OEB": "Stand firm, therefore, girding your waist with truth, and putting on the breastplate of righteousness,",
        "tags": [truth_tag]
      }
    },
    "5": {
      "20": {
        "OEB": "always giving thanks for everything to our God and Father, in the faith of our Lord Jesus Christ.",
        "tags": [gratitude_tag]
      },
      "33": {
        "OEB": "‘Honour your father and mother’ — this is the first commandment with a promise added:",
        "tags": [respect_tag]
      }
    }
  },
  "John": {
    "1": {
      "12": {
        "OEB": "Do not let your hearts be troubled. Believe in God; believe also in me.",
        "tags": [acceptance_tag]
      }
    },
    "14": {
      "27": {
        "OEB": "I have spoken to you in this way so that in me you may find peace. In the world you will find trouble; yet, take courage! I have conquered the world.”",
        "tags": [anxiety_tag, fear_tag, peace_tag]
      },
      "1": {
        "OEB": "Do not let your hearts be troubled. Believe in God; believe also in me.",
        "tags": [grief_tag, stress_tag, worry_tag]
      },
      "18": {
        "OEB": "“Listen! A time is coming – indeed it has already come – when you are to be scattered, each going his own way, and to leave me alone; and yet I am not alone, because the Father is with me.",
        "tags": [loneliness_tag]
      },
      "13": {
        "OEB": "Whatever you ask, in my name, I will do, so that the Father may be honored in the Son.",
        "tags": [prayer_tag]
      },
      "6": {
        "OEB": "God is spirit, and those who worship him must worship in spirit and in truth.",
        "tags": [truth_tag]
      }
    },
    "6": {
      "37": {
        "OEB": "My Father, who has given them to me, is greater than all, and no one is able to carry them off out of the Father's hand.",
        "tags": [assurance_tag]
      }
    },
    "3": {
      "16": {
        "OEB": "You Samaritans do not know what you worship; we know what we worship, for salvation comes from the Jews.",
        "tags": [belief_tag, inspiration_tag, salvation_tag]
      }
    },
    "16": {
      "33": {
        "OEB": "I have spoken to you in this way so that in me you may find peace. In the world you will find trouble; yet, take courage! I have conquered the world.",
        "tags": [courage_tag, depression_tag]
      }
    },
    "20": {
      "29": {
        "OEB": "‘Because you have seen me,’ he said to Thomas, ‘you have believed me blessed? They who have not seen and yet have believed!’",
        "tags": [faith_tag]
      }
    },
    "15": {
      "13": {
        "OEB": "I no longer call you ‘servants,’ because a servant does not know what their master is doing; but I have given you the name of ‘friends,’ because I have made known to you everything that I learned from my Father.",
        "tags": [friendship_tag]
      }
    },
    "13": {
      "34": {
        "OEB": "No one can give greater proof of love than by laying down their life for their friends.",
        "tags": [love_tag]
      }
    },
    "17": {
      "15": {
        "OEB": "I do not ask you to take them out of the world, but to keep them safe from evil.",
        "tags": [protection_tag]
      }
    },
    "12": {
      "26": {
        "OEB": "If a person serves me, they will follow me; and where I am, there my servant will be also. If a person serves me, my Father will honor them.",
        "tags": [serving_tag]
      }
    },
    "8": {
      "44": {
        "OEB": "You are of your father the devil, and your will is to do your father's desires. He was a murderer from the beginning, and does not stand in the truth, because there is no truth in him. When he lies, he speaks out of his own character, for he is a liar and the father of lies.",
        "tags": [truth_tag]
      }
    }
  },
  "1 John": {
    "1": {
      "9": {
        "OEB": "even if our conscience condemns us, that God is greater than our conscience and knows everything.",
        "tags": [acceptance_tag, guilt_tag]
      },
      "6": {
        "OEB": "The one who says, 'I know him,' but does not obey his commands is a liar, and the truth is not in such a person.",
        "tags": [truth_tag]
      }
    },
    "3": {
      "19": {
        "OEB": "I have written these things to you who believe in the name of the Son of God, so that you may know that you have eternal life.",
        "tags": [assurance_tag]
      },
      "21": {
        "OEB": "And this is the confidence with which we approach him, that whenever we ask anything that is in accordance with his will, he listens to us.",
        "tags": [confidence_tag]
      },
      "1": {
        "OEB": "And we have learned to know and to believe the love that God has for us. God is love; and the person who lives in love lives in God, and God lives in them.",
        "tags": [love_tag]
      }
    },
    "5": {
      "1": {
        "OEB": "Everyone who believes that Jesus is the Christ has received the new life from God; and everyone who loves him who gave the new life loves him who has received it.",
        "tags": [belief_tag]
      },
      "14": {
        "OEB": "We can approach him with this confidence, that whenever we ask anything that is in accordance with his will, he listens to us.",
        "tags": [prayer_tag]
      },
      "18": {
        "OEB": "We know that no child of God lives in sin, but he who was born of God guards him, and the Evil One never touches him.",
        "tags": [protection_tag]
      }
    },
    "4": {
      "18": {
        "OEB": "There is no fear in love. No! Love, when perfect, drives out fear, for fear implies punishment, and the man who fears has not attained to perfect love.",
        "tags": [fear_tag]
      }
    }
  },
  "1 Peter": {
    "3": {
      "8": {
        "OEB": "Lastly, you should all be united, sympathetic, full of love for each other, kind-hearted, humble-minded;",
        "tags": [acceptance_tag]
      },
      "12": {
        "OEB": "For the eyes of the Lord are on the righteous, and his ears are attentive to their prayers, but the face of the Lord is set against those who do wrong.’",
        "tags": [protection_tag]
      }
    },
    "5": {
      "7": {
        "OEB": "laying all your anxieties on him, for he makes you his care.",
        "tags": [anxiety_tag, depression_tag, grief_tag, inspiration_tag, loneliness_tag, stress_tag, trust_tag, worry_tag]
      },
      "12": {
        "OEB": "I have been writing to you briefly by the hand of Silas, our true-hearted friend (for so I regard him), to encourage you, and to bear my testimony that in what I have written is to be found the true love of God. On that take your stand.",
        "tags": [encouragement_tag]
      }
    },
    "1": {
      "3": {
        "OEB": "who are being guarded through faith for a salvation that is ready to be revealed at the end of time.",
        "tags": [assurance_tag]
      },
      "8": {
        "OEB": "as you receive the reward of your faith in the salvation of your souls!",
        "tags": [belief_tag]
      },
      "7": {
        "OEB": "that the tried strength of your faith – a thing far more precious than gold, which is indeed perishable, yet has to be tested by fire – may win praise and glory and honor at the appearing of Jesus Christ.",
        "tags": [faith_tag]
      },
      "9": {
        "OEB": "as you receive the reward of your faith in the salvation of your souls!",
        "tags": [salvation_tag]
      }
    },
    "4": {
      "8": {
        "OEB": "Above all things, love one another earnestly, for ‘Love throws a veil over countless sins.’",
        "tags": [friendship_tag]
      },
      "10": {
        "OEB": "When anyone speaks, they should speak as one who is speaking God’s words. When anyone is endeavoring to serve others, they should do so in reliance on the strength which God supplies; so that in everything God may be honored through Jesus Christ — to whom be ascribed all honor and might for ever and ever. Amen.",
        "tags": [serving_tag]
      }
    },
    "2": {
      "24": {
        "OEB": "And he ‘himself carried our sins’ in his own body to the cross, so that we might die to our sins, and live for righteousness. ‘His bruising was your healing.’",
        "tags": [health_tag]
      },
      "17": {
        "OEB": "Again, you younger ones should submit to the older. And all of you should put on the badge of humility in mutual service, for ‘God is opposed to the proud, but gives grace to the humble.’",
        "tags": [respect_tag]
      }
    }
  },
  "Colossians": {
    "3": {
      "12": {
        "OEB": "Therefore, as God's people, consecrated and dear to him, clothe yourselves with tenderness of heart, kindliness, humility, gentleness, forbearance;",
        "tags": [acceptance_tag, friendship_tag, kindness_tag]
      },
      "3": {
        "OEB": "for you have died, and your life is hidden with the Christ in God.",
        "tags": [assurance_tag]
      },
      "15": {
        "OEB": "Let the ruling principle in your hearts be Christ’s peace, for this is the purpose of your call to be one body. And show yourselves thankful.",
        "tags": [gratitude_tag, stress_tag]
      },
      "23": {
        "OEB": "Whatever you do, do it with all your heart, as if working for the Master and not for people,",
        "tags": [inspiration_tag, serving_tag]
      },
      "14": {
        "OEB": "Over all these virtues put on love, which is the girdle that makes all complete.",
        "tags": [love_tag]
      }
    },
    "4": {
      "8": {
        "OEB": "in the hope that they, being bound to one another by love, may be encouraged, and may attain in the fullest measure to a clear knowledge of the hidden truths of God – which are Christ himself.",
        "tags": [encouragement_tag]
      },
      "2": {
        "OEB": "Devote yourselves to prayer. Give your whole mind to it, and also offer thanksgiving;",
        "tags": [prayer_tag]
      }
    },
    "2": {
      "5": {
        "OEB": "If I cannot see you in the body, yet I am with you in spirit, and rejoice to know of your orderliness and of the firmness of your faith in Christ.",
        "tags": [faith_tag]
      }
    },
    "1": {
      "5": {
        "OEB": "because of the hope laid up for you in heaven. You have already heard of this hope in the message of the truth of the gospel,",
        "tags": [truth_tag]
      }
    }
  },
  "Matthew": {
    "11": {
      "28": {
        "OEB": "and teaching them to lay to heart all the commands that I have given you; and, remember, I myself am with you every day until the close of the age.",
        "tags": [acceptance_tag, depression_tag, loneliness_tag]
      }
    },
    "6": {
      "25": {
        "OEB": "Therefore do not be anxious about tomorrow, for tomorrow will bring its own anxieties. Every day has trouble enough of its own.",
        "tags": [anxiety_tag, stress_tag, trust_tag, worry_tag]
      },
      "33": {
        "OEB": "Come to me, all you who toil and are burdened, and I will give you rest!",
        "tags": [inspiration_tag]
      },
      "11": {
        "OEB": "Do not then ask anxiously ‘What can we get to eat? What can we get to drink? How can we get clothes?’",
        "tags": [provision_tag]
      }
    },
    "21": {
      "22": {
        "OEB": "And whatever you ask for in your prayers will, if you have faith, be granted you.’",
        "tags": [belief_tag]
      }
    },
    "5": {
      "3": {
        "OEB": "Blessed are you when people insult you, and persecute you, and say all kinds of evil lies about you because of me.",
        "tags": [blessings_tag]
      },
      "4": {
        "OEB": "Blessed are the mourners, for they will be comforted.",
        "tags": [grief_tag]
      },
      "7": {
        "OEB": "Blessed are the merciful, for they will find mercy.",
        "tags": [kindness_tag]
      },
      "44": {
        "OEB": "And whatever you ask for in your prayers will, if you have faith, be granted you.",
        "tags": [love_tag, prayer_tag]
      },
      "9": {
        "OEB": "Blessed are the peacemakers, for they will be called children of God.",
        "tags": [peace_tag]
      }
    },
    "9": {
      "2": {
        "OEB": "But Jesus at once spoke to them. ‘Courage!’ he said, ‘it is I; do not be afraid!’",
        "tags": [courage_tag]
      }
    },
    "17": {
      "20": {
        "OEB": "‘I tell you,’ replied Jesus, ‘if you have faith, without ever a doubt, you will do what not only what has been done to the fig tree, but, even if you should say to this hill “Be lifted up and hurled into the sea!” that would be done.",
        "tags": [faith_tag]
      }
    },
    "10": {
      "28": {
        "OEB": "Do not, therefore, be afraid of them. There is nothing concealed which will not be revealed, nor anything hidden which will not become known.",
        "tags": [fear_tag]
      }
    },
    "27": {
      "4": {
        "OEB": "‘I did wrong in betraying a good man to his death,’ he said. ‘What has that to do with us?’ they replied. ‘You must see to that yourself.’",
        "tags": [guilt_tag]
      }
    },
    "4": {
      "23": {
        "OEB": "Cure the sick, raise the dead, make the lepers clean, drive out demons. You have received free of cost, give free of cost.",
        "tags": [health_tag]
      },
      "10": {
        "OEB": "The person who wants to be the greatest among you must be your servant.",
        "tags": [serving_tag]
      }
    },
    "7": {
      "12": {
        "OEB": "For God said — ‘Honor your father and mother,’ and ‘Anyone who abuses their father or mother will suffer capital punishment;’",
        "tags": [respect_tag]
      }
    }
  },
  "2 Corinthians": {
    "5": {
      "17": {
        "OEB": "Therefore, if anyone is in union with Christ, he is a new being! His old life has passed away; a new life has begun!",
        "tags": [acceptance_tag]
      },
      "7": {
        "OEB": "For we guide our lives by faith, and not by what we see.",
        "tags": [belief_tag]
      },
      "6": {
        "OEB": "And in this confidence we would gladly leave our home in the body, and make our home with the Lord.",
        "tags": [courage_tag]
      }
    },
    "1": {
      "21": {
        "OEB": "who has also put his seal upon us and given us the Spirit as the guarantee of what is to come.",
        "tags": [assurance_tag]
      },
      "3": {
        "OEB": "Blessed is the God and Father of Jesus Christ our Lord, the all-merciful Father, the God ever ready to console, who consoles us in all our troubles, so that we may be able to console those who are in any trouble with the consolation that we ourselves receive from him. It is true that we have our full share of the sufferings of the Christ, but through the Christ we have also our full share of consolation.",
        "tags": [depression_tag, grief_tag, loneliness_tag]
      },
      "9": {
        "OEB": "Indeed, we felt that we had received the sentence of death. But that was to make us rely not on ourselves but on God who raises the dead.",
        "tags": [trust_tag]
      }
    },
    "9": {
      "8": {
        "OEB": "God has power to shower all kinds of blessings on you, so that, having, under all circumstances and on all occasions, all that you can need, you may be able to shower all kinds of benefits on others.",
        "tags": [blessings_tag, provision_tag]
      },
      "11": {
        "OEB": "For all this is for your sakes, to secure a widespread thanksgiving which rises to the glory of God.",
        "tags": [gratitude_tag]
      }
    },
    "3": {
      "4": {
        "OEB": "I am glad that I can feel perfect confidence in you.",
        "tags": [confidence_tag]
      }
    },
    "7": {
      "6": {
        "OEB": "who consoles us in all our troubles, so that we may be able to console those who are in any kind of trouble by the consolation that we ourselves receive from him.",
        "tags": [encouragement_tag]
      },
      "11": {
        "OEB": "For see what results that other sorrow – sorrow in accordance with God’s will – has brought in your case; what earnestness it produced! what self-vindication! what indignation! what alarm! what longing! what eagerness! what readiness to avenge wrong! You have proved yourselves altogether free from guilt in this matter.",
        "tags": [guilt_tag]
      }
    },
    "4": {
      "16": {
        "OEB": "Therefore, as I said, we do not lose heart. No, even though outwardly we are wasting away, yet inwardly we are being renewed day by day. The light burden of our momentary trouble is preparing for us, in measure transcending thought, a weight of imperishable glory; we, all the while, gazing not on what is seen, but on what is unseen; for what is seen is transient, but what is unseen is imperishable.",
        "tags": [inspiration_tag]
      }
    },
    "6": {
      "6": {
        "OEB": "by purity, by knowledge, by patience, by kindliness, by holiness of spirit, by unfeigned love;",
        "tags": [kindness_tag]
      },
      "2": {
        "OEB": "For he says — ‘At the time for acceptance I listened to you, and on the day of deliverance I helped you.’ Now is the time for acceptance! Now is the day of deliverance!",
        "tags": [salvation_tag]
      }
    },
    "13": {
      "8": {
        "OEB": "For we cannot do anything against the truth, but only for the truth.",
        "tags": [truth_tag]
      }
    }
  },
  "Galatians": {
    "3": {
      "28": {
        "OEB": "All distinctions between Jew and Greek, slave and free, male and female, have vanished; for in union with Christ Jesus you are all one.",
        "tags": [acceptance_tag]
      }
    },
    "2": {
      "20": {
        "OEB": "Again, it is evident that no one is pronounced righteous before God through Law, for we read – ‘Through faith the righteous will find life.’",
        "tags": [belief_tag, faith_tag]
      }
    },
    "5": {
      "10": {
        "OEB": "I have confidence in you, through union with the Lord, that you will learn to think with me. But the man who is disturbing your minds will have to bear his punishment, whoever he may be.",
        "tags": [confidence_tag]
      },
      "22": {
        "OEB": "But the fruit produced by the Spirit is love, joy, peace, forbearance, kindliness, generosity, trustfulness, gentleness, self-control.",
        "tags": [inspiration_tag, kindness_tag, love_tag, peace_tag]
      },
      "13": {
        "OEB": "For you, friends, were called to freedom. Only, do not make your freedom an opportunity for self-indulgence but serve one another in a spirit of love.",
        "tags": [serving_tag]
      }
    },
    "6": {
      "2": {
        "OEB": "Bear one another’s burdens, and so carry out the Law of the Christ.",
        "tags": [friendship_tag]
      }
    }
  },
  "Luke": {
    "6": {
      "37": {
        "OEB": "Do not judge, and you will not be judged; do not condemn, and you will not be condemned. Forgive, and you will be forgiven.",
        "tags": [acceptance_tag]
      },
      "35": {
        "OEB": "But love your enemies, and do good to them, and lend to them, never despairing. Then your reward will be great, and you will be sons of the Most High, for he is kind to the thankless and the bad.",
        "tags": [kindness_tag, love_tag]
      },
      "12": {
        "OEB": "Jesus told his disciples a parable to show them that they should always pray and never despair.",
        "tags": [prayer_tag]
      }
    },
    "12": {
      "25": {
        "OEB": "But which of you, by being anxious, can prolong your life a moment?",
        "tags": [anxiety_tag]
      },
      "4": {
        "OEB": "that we should be rescued from the hands of our enemies, and should serve him without fear in holiness and righteousness,",
        "tags": [fear_tag]
      },
      "24": {
        "OEB": "Think of the ravens — they neither sow nor reap; they have neither storehouse nor barn; and yet God feeds them! How much more precious are you than birds!",
        "tags": [provision_tag]
      },
      "22": {
        "OEB": "If then you cannot do even the smallest thing, why are you anxious about the rest?",
        "tags": [stress_tag, worry_tag]
      }
    },
    "8": {
      "50": {
        "OEB": "But Jesus, hearing this, turned to him. ‘Do not be afraid,’ he said; ‘only have faith, and she will yet be delivered.’",
        "tags": [belief_tag]
      }
    },
    "17": {
      "6": {
        "OEB": "He will give them justice speedily. Yet, when the Son of Man comes, will he find faith on earth?’",
        "tags": [faith_tag]
      }
    },
    "15": {
      "21": {
        "OEB": "‘Father,’ the son said, ‘I sinned against heaven and against you; I am no longer fit to be called your son; make me one of your hired servants.’",
        "tags": [guilt_tag]
      }
    },
    "4": {
      "18": {
        "OEB": "But the people recognized him and followed him in crowds; and Jesus welcomed them and spoke to them about the kingdom of God, while he cured those who were in need of help.",
        "tags": [health_tag]
      }
    },
    "1": {
      "37": {
        "OEB": "for no promise from God will fail to be fulfilled.",
        "tags": [inspiration_tag]
      },
      "79": {
        "OEB": "“Glory to God on high, And on earth peace among those in whom he finds pleasure.”",
        "tags": [peace_tag]
      },
      "77": {
        "OEB": "“Salvation has come to this house today,” answered Jesus, “for this man also is a son of Abraham.",
        "tags": [salvation_tag]
      },
      "74": {
        "OEB": "But with you it must not be so. No, let the leader among you become like the servant, and him who is greatest like him who serves.",
        "tags": [serving_tag]
      }
    },
    "5": {
      "16": {
        "OEB": "but Jesus used to withdraw to lonely places and pray.",
        "tags": [loneliness_tag]
      }
    }
  },
  "2 John": {
    "1": {
      "10": {
        "OEB": "If anyone comes to you and does not bring this teaching, do not receive them into your house or welcome them;",
        "tags": [acceptance_tag]
      }
    }
  },
  "1 Timothy": {
    "1": {
      "15": {
        "OEB": "How true the saying is, and worthy of the fullest acceptance, that ‘Christ Jesus came into the world to save sinners’! And there is no greater sinner than I!",
        "tags": [acceptance_tag, guilt_tag]
      },
      "12": {
        "OEB": "I am thankful to Christ Jesus, our Lord, who has been my strength, for showing that he accounted me trustworthy, by appointing me to his ministry –",
        "tags": [serving_tag]
      }
    },
    "3": {
      "13": {
        "OEB": "Those who have filled that post satisfactorily gain for themselves an honorable position, as well as great confidence through their faith in Christ Jesus.",
        "tags": [confidence_tag]
      }
    },
    "6": {
      "12": {
        "OEB": "Run the great race of the faith, and win the eternal life. It was for this that you received the call, and, in the presence of many witnesses, made the great profession of faith.",
        "tags": [faith_tag]
      },
      "17": {
        "OEB": "Urge upon those who are wealthy in this life not to pride themselves, or fix their hopes, on so uncertain a thing as wealth, but on God, who gives us a wealth of enjoyment on all sides.",
        "tags": [provision_tag]
      }
    },
    "4": {
      "4": {
        "OEB": "First of all, then, I ask that petitions, prayers, intercessions, and thanksgivings should be offered for everyone,",
        "tags": [gratitude_tag]
      },
      "8": {
        "OEB": "for while the training of the body is of service in some respects, religion is of service in all, carrying with it, as it does, a promise of life both here and hereafter.",
        "tags": [health_tag]
      }
    },
    "2": {
      "1": {
        "OEB": "First of all, then, I ask that petitions, prayers, intercessions, and thanksgivings should be offered for everyone.",
        "tags": [prayer_tag]
      }
    },
    "5": {
      "17": {
        "OEB": "Those church elders who fill their office well should be held deserving of especial consideration, particularly those whose work lies in preaching and teaching.",
        "tags": [respect_tag]
      }
    }
  },
  "Acts": {
    "10": {
      "34": {
        "OEB": "but that in every nation he who reverences him and does what is right is acceptable to him.",
        "tags": [acceptance_tag, respect_tag]
      }
    },
    "17": {
      "31": {
        "OEB": "because he has fixed a day in which he will judge the world in righteousness, through a man of his own choosing, and has made this credible to all men by raising him from the dead.",
        "tags": [assurance_tag]
      }
    },
    "16": {
      "31": {
        "OEB": "And Philip said, ‘If you believe with your whole heart, you may.’ And the eunuch answered, ‘I believe that Jesus Christ is the Son of God.’",
        "tags": [belief_tag]
      }
    },
    "28": {
      "31": {
        "OEB": "proclaiming the kingdom of God, and teaching about the Lord Jesus Christ, with all confidence, unhindered.",
        "tags": [confidence_tag]
      },
      "2": {
        "OEB": "since today we are being examined as to the good deed done to a helpless man, and are being asked in what way this man has been cured,",
        "tags": [kindness_tag]
      }
    },
    "4": {
      "13": {
        "OEB": "And now I would urge you to be cheerful. There will be no loss of life among you, but we must lose the ship.",
        "tags": [courage_tag]
      },
      "12": {
        "OEB": "‘Believe in Jesus, our Lord,’ they replied, ‘and you will be saved, you and your household too.’",
        "tags": [salvation_tag]
      }
    },
    "14": {
      "22": {
        "OEB": "On coming there he saw to his great joy these tokens of the loving kindness of God, and encouraged them all to make up their minds to be faithful to the Lord –",
        "tags": [encouragement_tag]
      }
    },
    "26": {
      "18": {
        "OEB": "to open their eyes, and to turn them from darkness to light, and from the power of Satan to God; so that they may receive pardon for their sins, and a place among those who have become God’s people, by faith in me.’",
        "tags": [faith_tag]
      }
    },
    "2": {
      "38": {
        "OEB": "‘Repent,’ answered Peter, ‘and be baptized every one of you in the faith of Jesus Christ for the forgiveness of your sins; and then you will receive the gift of the Holy Spirit.",
        "tags": [guilt_tag]
      }
    },
    "3": {
      "16": {
        "OEB": "The story, I mean, of Jesus of Nazareth, and how God consecrated him his Christ by enduing him with the Holy Spirit and with power; and how he went about doing good and curing all who were under the power of the devil, because God was with him.",
        "tags": [health_tag]
      }
    },
    "1": {
      "8": {
        "OEB": "but you will receive power, when the Holy Spirit will have descended on you, and will be witnesses for me not only in Jerusalem, but throughout Judea and Samaria, and to the ends of the earth.”",
        "tags": [inspiration_tag]
      },
      "14": {
        "OEB": "They all united in devoting themselves to prayer, and so did some women, and Mary, the mother of Jesus, and his brothers.",
        "tags": [prayer_tag]
      }
    },
    "20": {
      "35": {
        "OEB": "But get up and stand upright, for I have appeared to you in order to appoint you a servant and a witness both of those revelations of me which you have already had, and of those in which I will yet appear to you,",
        "tags": [serving_tag]
      }
    }
  },
  "James": {
    "2": {
      "1": {
        "OEB": "My friends, are you really trying to combine faith in Jesus Christ, our glorified Lord, with the worship of rank?",
        "tags": [acceptance_tag]
      },
      "19": {
        "OEB": "You believe that there is one God; that is right enough. Even the demons believe that – and tremble.",
        "tags": [belief_tag]
      }
    },
    "1": {
      "12": {
        "OEB": "Blessed is the person who remains firm under temptation, for, when they have stood the test, they will receive the crown of life, which the Lord has promised to those who love him.",
        "tags": [blessings_tag]
      },
      "6": {
        "OEB": "Exactly as a body without a spirit is dead, so is faith without actions dead.",
        "tags": [faith_tag]
      },
      "2": {
        "OEB": "My friends, whatever may be the temptations that beset you from time to time, always regard them as a reason for rejoicing, knowing, as you do, that the testing of your faith develops endurance.",
        "tags": [inspiration_tag]
      },
      "5": {
        "OEB": "Therefore, confess your sins to one another and pray for one another, so that you may be cured. Great is the power of a good person’s fervent prayer.",
        "tags": [prayer_tag]
      }
    },
    "4": {
      "4": {
        "OEB": "Unfaithful people! Don’t you know that to be friends with the world means to be at enmity with God? Therefore whoever chooses to be friends with the world makes himself an enemy to God.",
        "tags": [friendship_tag]
      },
      "8": {
        "OEB": "Draw near to God, and he will draw near to you. Make your hands clean, you sinners; and your hearts pure, you vacillators!",
        "tags": [loneliness_tag]
      }
    },
    "5": {
      "16": {
        "OEB": "Therefore confess your sins to one another and pray for one another so that you may be cured. Great is the power of a good person’s prayer.",
        "tags": [guilt_tag]
      },
      "14": {
        "OEB": "Therefore, confess your sins to one another and pray for one another, so that you may be cured. Great is the power of a good person’s fervent prayer.",
        "tags": [health_tag]
      }
    }
  },
  "1 Corinthians": {
    "15": {
      "10": {
        "OEB": "But it is through the love of God that I am what I am, and the love that he showed me has not been wasted. No, I have toiled harder than any of them, and yet it was not I, but the love of God working with me.",
        "tags": [acceptance_tag]
      },
      "1": {
        "OEB": "and by means of which you are being saved. I would like to remind you of the words that I used in telling it to you, since you still hold to it, unless indeed it was a mistake to believe it.",
        "tags": [belief_tag]
      }
    },
    "16": {
      "13": {
        "OEB": "Be watchful; stand firm in your faith; play a man's part; be strong.",
        "tags": [courage_tag]
      }
    },
    "6": {
      "19": {
        "OEB": "to another faith by the same Spirit; to another power to cure diseases by the one Spirit; to another supernatural powers;",
        "tags": [health_tag]
      }
    },
    "10": {
      "13": {
        "OEB": "Be watchful; stand firm in your faith; be brave; be strong.",
        "tags": [inspiration_tag]
      }
    },
    "13": {
      "4": {
        "OEB": "Let everything you do be done in a loving spirit.",
        "tags": [kindness_tag, love_tag]
      }
    },
    "14": {
      "33": {
        "OEB": "For God is not a God of disorder, but of peace. This custom prevails in all the churches of Christ’s people.",
        "tags": [peace_tag]
      }
    },
    "12": {
      "23": {
        "OEB": "and those parts of the body which seem to us to be the weaker, we surround with special honour; and our uncomely parts we clothe with especial care,",
        "tags": [respect_tag]
      }
    }
  },
  "Titus": {
    "3": {
      "7": {
        "OEB": "that, having been pronounced righteous through his loving kindness, we might enter on our inheritance with the hope of eternal life.",
        "tags": [acceptance_tag]
      },
      "4": {
        "OEB": "But, when the kindness of God our Savior and his love for humanity appeared,",
        "tags": [kindness_tag]
      },
      "1": {
        "OEB": "Remind them to respect and obey the rulers and authorities, to be ready for every kind of good work, to slander no one, to avoid quarrelling,",
        "tags": [respect_tag]
      }
    },
    "1": {
      "9": {
        "OEB": "and a man who holds doctrine that is sound and true, so that he may be able to encourage others by sound teaching, as well as to refute those who contradict it.",
        "tags": [encouragement_tag]
      }
    }
  },
  "Hebrews": {
    "10": {
      "19": {
        "OEB": "Therefore, friends, since we may enter the sanctuary with confidence, in virtue of the blood of Jesus,",
        "tags": [acceptance_tag]
      },
      "22": {
        "OEB": "how much more will the blood of the Christ, who, through his eternal Spirit, offered himself unblemished to God, purify our consciences from a lifeless ritual, so that we may worship the living God.",
        "tags": [guilt_tag]
      }
    },
    "13": {
      "6": {
        "OEB": "So we can confidently say, “The Lord is my helper; I will not fear. What can man do to me?”",
        "tags": [anxiety_tag, courage_tag, fear_tag, protection_tag, trust_tag]
      },
      "17": {
        "OEB": "Obey your leaders, and submit to their control, for they are watching over your souls, as people who will have to give an account. Let them do this with joy, and not in sorrow; for that would be harmful to you.",
        "tags": [respect_tag]
      },
      "5": {
        "OEB": "Let your way of life be free from the love of money, content with what you have; for he has said, 'I will never leave you, I will never abandon you.'",
        "tags": [worry_tag]
      }
    },
    "6": {
      "17": {
        "OEB": "Let your way of life be free from the love of money, content with what you have; for he has said, 'I will never leave you, I will never abandon you.'",
        "tags": [assurance_tag]
      }
    },
    "11": {
      "1": {
        "OEB": "Seeing, therefore, that there is on every side of us such a throng of witnesses, let us also lay aside everything that hinders us, and the sin that clings about us, and run with patient endurance the race that lies before us, our eyes fixed on Jesus, the leader and perfect example of our faith, who, for the joy that lay before him, endured the cross, heedless of its shame, and now ‘has taken his seat at the right hand’ of the throne of God.",
        "tags": [belief_tag, faith_tag, inspiration_tag]
      }
    },
    "4": {
      "16": {
        "OEB": "Therefore, let us draw near boldly to the throne of love, to find pity and love for the hour of need.",
        "tags": [confidence_tag, prayer_tag]
      },
      "15": {
        "OEB": "Do not let your conduct be ruled by the love of money. Be content with what you have, for God himself has said – ‘I will never forsake you, nor will I ever abandon you.’",
        "tags": [loneliness_tag]
      }
    },
    "3": {
      "13": {
        "OEB": "And let us not, as some do, cease to meet together; but, on the contrary, let us encourage one another, and all the more, now that you see the day drawing near.",
        "tags": [encouragement_tag]
      }
    },
    "12": {
      "28": {
        "OEB": "Therefore, let us, who have received a kingdom that cannot be shaken, be thankful, and so offer acceptable worship to God, with awe and reverence.",
        "tags": [gratitude_tag]
      }
    },
    "1": {
      "14": {
        "OEB": "so it is with the Christ. He was offered up once and for all, to ‘bear away the sins of many’; and the second time he will appear — but without any burden of sin — to those who are waiting for him, to bring salvation.",
        "tags": [salvation_tag]
      }
    },
    "9": {
      "14": {
        "OEB": "how much more will the blood of the Christ, who, through his eternal Spirit, offered himself without blemish to God, purify our consciences from a lifeless ritual, so that we may worship the living God!",
        "tags": [serving_tag]
      }
    }
  },
  "Philippians": {
    "4": {
      "6": {
        "OEB": "Then the peace of God, which is beyond all human understanding, will stand guard over your hearts and thoughts, through your union with Christ Jesus.",
        "tags": [anxiety_tag, gratitude_tag, inspiration_tag, loneliness_tag, prayer_tag, stress_tag, worry_tag]
      },
      "13": {
        "OEB": "I can do everything in the strength of him who makes me strong!",
        "tags": [depression_tag]
      },
      "7": {
        "OEB": "Then the peace of God, which is beyond all human understanding, will stand guard over your hearts and thoughts, through your union with Christ Jesus.",
        "tags": [peace_tag]
      },
      "19": {
        "OEB": "And my God will supply every need of yours according to his riches in glory in Christ Jesus.",
        "tags": [provision_tag, trust_tag]
      }
    },
    "1": {
      "6": {
        "OEB": "For it is we who are the circumcised, we who worship by the Spirit of God, and find our boast in Christ Jesus, and put no confidence in external privileges.",
        "tags": [assurance_tag, confidence_tag]
      },
      "29": {
        "OEB": "For, on behalf of Christ, you have had the privilege granted you not only of trusting in him, but also of suffering on his behalf.",
        "tags": [belief_tag]
      },
      "20": {
        "OEB": "as I eagerly expect and hope that I will have no cause for shame; but that, with unfailing courage, now as hitherto, Christ will be honored in my body, whether by my life or by my death,",
        "tags": [courage_tag]
      }
    },
    "2": {
      "1": {
        "OEB": "If, then, any encouragement comes through union with Christ, if there is any comfort from love, if there is any common sharing of the Spirit, if there is any tenderness or pity,",
        "tags": [encouragement_tag]
      },
      "3": {
        "OEB": "Nothing should be done in a spirit of rivalry or conceit, but humbly, each should think more of others than of themselves.",
        "tags": [friendship_tag, respect_tag]
      },
      "12": {
        "OEB": "Therefore, my dear friends, as you have always been obedient in the past, not only in my presence, but much more now that I am absent, continue to work out your own salvation with anxious care.",
        "tags": [salvation_tag]
      }
    },
    "3": {
      "9": {
        "OEB": "Any righteousness that I have being, not the righteousness that results from Law, but the righteousness which comes from faith in Christ – the righteousness which is derived from God and is founded on faith.",
        "tags": [faith_tag]
      }
    }
  },
  "2 Timothy": {
    "1": {
      "7": {
        "OEB": "For the Spirit which God gave us was not a spirit of cowardice, but a spirit of power, love, and self-control.",
        "tags": [anxiety_tag, courage_tag, fear_tag, inspiration_tag, worry_tag]
      },
      "12": {
        "OEB": "and this is why I suffer these things; but I am not ashamed, for I know him in whom I have believed, and I am convinced that he is able to guard what has been entrusted to me until that Day.",
        "tags": [assurance_tag]
      }
    },
    "3": {
      "15": {
        "OEB": "and that from a child you have known the sacred writings, which can give you the wisdom that, through belief in Christ Jesus, leads to salvation.",
        "tags": [belief_tag, salvation_tag]
      }
    },
    "4": {
      "2": {
        "OEB": "Proclaim the message, be ready in season and out of season, convince, rebuke, encourage, never fail to instruct with forbearance.",
        "tags": [encouragement_tag]
      },
      "7": {
        "OEB": "I have run the great race; I have finished the course; I have kept the faith.",
        "tags": [faith_tag]
      },
      "16": {
        "OEB": "At my first trial no one stood by me. They all deserted me. May it never be counted against them! But the Lord came to my help and strengthened me, in order that, through me, the proclamation should be made so widely that all the Gentiles should hear it; and I was rescued out of the lion’s mouth. The Lord will rescue me from all evil, and bring me safe into his Heavenly kingdom. All glory to him for ever and ever! Amen.",
        "tags": [loneliness_tag]
      }
    }
  },
  "Proverbs": {
    "12": {
      "25": {
        "OEB": "Care bows down a man's heart, but a good word makes it glad.",
        "tags": [anxiety_tag, stress_tag, worry_tag]
      },
      "17": {
        "OEB": "Buy truth, and do not sell it; get wisdom, instruction, and understanding.",
        "tags": [truth_tag]
      }
    },
    "10": {
      "6": {
        "OEB": "The generous are blessed, for they give of their bread to the poor.",
        "tags": [blessings_tag]
      },
      "12": {
        "OEB": "A friend shows love at all times, a brother is born for adversity.",
        "tags": [love_tag]
      },
      "3": {
        "OEB": "The Lord does not let the righteous go hungry, but the wicked he thwarts in their greed.",
        "tags": [provision_tag]
      }
    },
    "3": {
      "26": {
        "OEB": "The wicked flee though no one pursues, but the righteous are bold as a lion.",
        "tags": [confidence_tag]
      },
      "5": {
        "OEB": "A greedy person stirs up strife, but one who trusts in the Lord will prosper.",
        "tags": [trust_tag]
      }
    },
    "29": {
      "25": {
        "OEB": "The fear of others becomes a snare, but those who trust in the Lord are secure.",
        "tags": [fear_tag]
      }
    },
    "17": {
      "17": {
        "OEB": "Wealth brings many new friends, but the poor are left friendless.",
        "tags": [friendship_tag]
      }
    },
    "28": {
      "13": {
        "OEB": "One who hides their sins will not prosper, but one who confesses and forsakes them finds mercy.",
        "tags": [guilt_tag]
      }
    },
    "14": {
      "21": {
        "OEB": "She opens her mouth with wisdom, and faithful counsel is on her tongue.",
        "tags": [kindness_tag]
      }
    },
    "18": {
      "10": {
        "OEB": "All he says is pure, he shields those who take refuge in him.",
        "tags": [protection_tag]
      }
    },
    "1": {
      "8": {
        "OEB": "Listen to your father who begat you, and despise not your mother when she is old.",
        "tags": [respect_tag]
      }
    }
  },
  "Isaiah": {
    "35": {
      "4": {
        "OEB": "For I, the Lord your God, hold your right hand; it is I who say to you, “Fear not, I will help you.”",
        "tags": [anxiety_tag]
      },
      "3": {
        "OEB": "Strengthen the hands that are weak, make firm the failing knees!",
        "tags": [encouragement_tag]
      }
    },
    "30": {
      "15": {
        "OEB": "The effect of righteousness will be peace, its fruit will be quietness and confidence forever.",
        "tags": [confidence_tag]
      }
    },
    "41": {
      "10": {
        "OEB": "Fear not, for I am with you; be not dismayed, for I am your God; I will strengthen you, I will help you, I will uphold you with my victorious right hand.",
        "tags": [courage_tag, depression_tag, fear_tag, protection_tag, worry_tag]
      }
    },
    "53": {
      "3": {
        "OEB": "Fear not, for I am with you; be not dismayed, for I am your God; I will strengthen you, I will help you, I will uphold you with my victorious right hand.",
        "tags": [grief_tag]
      }
    },
    "1": {
      "18": {
        "OEB": "But he was wounded for our transgressions, crushed because of our iniquities; the chastisement for our peace was upon him; and by his stripes we are healed.",
        "tags": [guilt_tag]
      }
    },
    "54": {
      "8": {
        "OEB": "In a gush of anger I hid my face for a moment from you; but with everlasting kindness will I have pity on you, says the Lord, your redeemer.",
        "tags": [kindness_tag]
      }
    },
    "9": {
      "6": {
        "OEB": "But he was wounded for our transgressions, crushed because of our iniquities; the chastisement for our peace was laid upon him, and by his stripes we are healed.",
        "tags": [peace_tag]
      }
    },
    "33": {
      "16": {
        "OEB": "Such will live in lofty security, with inaccessible cliffs for retreat: bread will be sure, and water unfailing.",
        "tags": [provision_tag]
      }
    },
    "12": {
      "2": {
        "OEB": "His holy arm has the Lord laid bare in the sight of all nations, so all the ends of the earth may see how our God has wrought salvation.",
        "tags": [salvation_tag]
      }
    },
    "26": {
      "3": {
        "OEB": "Behold, God is my salvation; I will trust, and will not be afraid; for the Lord God is my strength and my song, and he has become my salvation.",
        "tags": [stress_tag, trust_tag]
      }
    }
  },
  "Joshua": {
    "1": {
      "9": {
        "OEB": "These are my orders: be firm and brave, never be daunted or dismayed, for the Lord your God is with you wherever you go.",
        "tags": [anxiety_tag, fear_tag]
      },
      "6": {
        "OEB": "These are my orders: be firm and brave, never be daunted or dismayed, for the Lord your God is with you wherever you go.",
        "tags": [courage_tag]
      },
      "5": {
        "OEB": "These are my orders: be firm and brave, never be daunted or dismayed, for the Lord your God is with you wherever you go.",
        "tags": [loneliness_tag]
      }
    },
    "2": {
      "12": {
        "OEB": "Swear to me by the Lord since I have showed you kindness that you also will show kindness to my father’s house and give me a true token and spare my father and my mother and my brothers and my sisters and all that they have and save us from death.’",
        "tags": [kindness_tag]
      }
    },
    "22": {
      "5": {
        "OEB": "If it is displeasing to you to serve the Lord, choose today whom you will serve; whether the gods whom your ancestors who were beyond the river served, or the gods of the Amorites in whose land you dwell; but as for me and my house, we will serve the Lord.”",
        "tags": [serving_tag]
      }
    }
  },
  "Jude": {
    "1": {
      "24": {
        "OEB": "Now to him who is able to keep you from falling and to bring you, without blemish and with exultant joy, into his glorious presence,",
        "tags": [assurance_tag]
      },
      "3": {
        "OEB": "Dear friends, while I was making every effort to write to you about our common salvation, I felt that I must write to you at once to urge you to fight in defense of the faith that has once for all been entrusted to the keeping of Christ's people.",
        "tags": [faith_tag]
      },
      "20": {
        "OEB": "But you must, dear friends, build up your characters on the foundation of your most holy faith, pray under the guidance of the Holy Spirit,",
        "tags": [prayer_tag]
      }
    }
  },
  "1 Thessalonians": {
    "1": {
      "5": {
        "OEB": "for our Good News came to you not in words only, but also with power and with the Holy Spirit and with deep conviction. You know what sort of men we proved to be among you for your sake.",
        "tags": [assurance_tag]
      }
    },
    "5": {
      "11": {
        "OEB": "Therefore encourage one another, and try to build up one another's characters, as indeed you are doing.",
        "tags": [encouragement_tag, friendship_tag]
      },
      "18": {
        "OEB": "Under all circumstances give thanks to God. This is his will for you as made known in Christ Jesus.",
        "tags": [gratitude_tag]
      },
      "16": {
        "OEB": "Always be joyful; never cease to pray; under all circumstances give thanks to God. For this is his will for you as made known in Christ Jesus.",
        "tags": [inspiration_tag]
      },
      "17": {
        "OEB": "never cease to pray;",
        "tags": [prayer_tag]
      },
      "12": {
        "OEB": "Hold them in the very greatest esteem and affection for the sake of their work. Live at peace with one another.",
        "tags": [respect_tag]
      },
      "9": {
        "OEB": "For God destined us, not for his wrath, but to win salvation through our Lord Jesus Christ, who died for us,",
        "tags": [salvation_tag]
      }
    },
    "4": {
      "13": {
        "OEB": "We don't want you to be ignorant, friends, about those who have passed away. You should not grieve like other people who have no hope.",
        "tags": [grief_tag]
      }
    }
  },
  "2 Peter": {
    "1": {
      "10": {
        "OEB": "Therefore, brethren, be all the more in earnest to make your calling and election sure. For if you practice these things, you will never stumble;",
        "tags": [assurance_tag]
      }
    }
  },
  "Mark": {
    "9": {
      "23": {
        "OEB": "And therefore I say to you: ‘Have faith that whatever you ask for in prayer is already granted you, and you will find that it will be.’",
        "tags": [belief_tag]
      }
    },
    "6": {
      "50": {
        "OEB": "for they all saw him and were terrified. But Jesus at once spoke to them. ‘Courage!’ he said, ‘it is I; do not be afraid!’",
        "tags": [courage_tag]
      }
    },
    "11": {
      "22": {
        "OEB": "“I tell you that if anyone should say to this hill ‘Be lifted up and hurled into the sea!’ without ever a doubt in his mind, but in the faith that what he says will be done, he would find that it would be.",
        "tags": [faith_tag]
      },
      "24": {
        "OEB": "And therefore I say to you ‘Have faith that whatever you ask for in prayer is already granted you, and you will find that it will be.’",
        "tags": [inspiration_tag, prayer_tag]
      }
    },
    "5": {
      "34": {
        "OEB": "they will take up snakes in their hands; and, if they drink any poison, it will not hurt them; they will place their hands on sick people and they will recover.”",
        "tags": [health_tag]
      }
    },
    "10": {
      "29": {
        "OEB": "“I tell you,” said Jesus, “there is no one who has left house, or brothers, or sisters, or mother, or father, or children, or land, for my sake and for the good news, who will not receive a hundred times as much, even now in the present – houses, and brothers, and sisters, and mothers, and children, and land, though not without persecutions – and in the age that is coming, eternal life.",
        "tags": [loneliness_tag]
      },
      "45": {
        "OEB": "For even the Son of Man came, not be served, but to serve, and to give his life as a ransom for many.”",
        "tags": [serving_tag]
      }
    },
    "12": {
      "30": {
        "OEB": "and you must love the Lord your God with all your heart, and with all your soul, and with all your mind, and with all your strength.’",
        "tags": [love_tag]
      }
    },
    "4": {
      "39": {
        "OEB": "Jesus rose and rebuked the wind, and said to the sea: “Hush! Be still!” Then the wind dropped, and a great calm followed.",
        "tags": [peace_tag]
      }
    }
  },
  "Numbers": {
    "6": {
      "24": {
        "OEB": "The Lord lift his face toward you and give you peace.",
        "tags": [blessings_tag]
      },
      "26": {
        "OEB": "The Lord lift up his face toward you and give you peace.",
        "tags": [peace_tag]
      }
    },
    "5": {
      "7": {
        "OEB": "and confess their sin; and they must make restitution for the wrong, adding one-fifth to it, and give it to the one who was wronged.",
        "tags": [guilt_tag]
      }
    }
  },
  "Deuteronomy": {
    "28": {
      "1": {
        "OEB": "a blessing will be on you when you come in and blessing when you go out.",
        "tags": [blessings_tag]
      }
    },
    "31": {
      "6": {
        "OEB": "A refuge is God immemorial, and underneath are the arms everlasting. The enemy he will thrust from your face, he will say, ‘Destroy them.’",
        "tags": [courage_tag, fear_tag, protection_tag]
      },
      "8": {
        "OEB": "It is the Lord who goes before you. He will be with you. He will not fail you nor abandon you. Do not fear or be dismayed.",
        "tags": [depression_tag]
      }
    },
    "1": {
      "38": {
        "OEB": "But commission Joshua and encourage and strengthen him, for he must cross over before this people, and he will cause them to inherit the land which you will see.’",
        "tags": [encouragement_tag]
      }
    },
    "6": {
      "5": {
        "OEB": "Know then that the Lord your God is God indeed, a faithful God, who keeps covenants and is merciful to the thousandth generation to those who love him and keep his commands,",
        "tags": [love_tag]
      }
    },
    "2": {
      "7": {
        "OEB": "He humbled you, and in your hunger gave you manna to eat, which neither you nor your ancestors had ever known, to teach you that human beings do not live on bread alone, but on every word that proceeds from the mouth of God.",
        "tags": [provision_tag]
      }
    },
    "5": {
      "16": {
        "OEB": "Honor your father and your mother, as the Lord your God has commanded you so that your days may be long, and that it may go well with you, in the land which the Lord your God is giving you.",
        "tags": [respect_tag]
      }
    },
    "10": {
      "12": {
        "OEB": "So now, Israel, what does the Lord your God require of you? To reverence the Lord your God, to walk in all his ways and love him, to serve the Lord your God with all your heart, and with all your soul,",
        "tags": [serving_tag]
      }
    }
  },
  "Genesis": {
    "12": {
      "2": {
        "OEB": "I will make of you a great nation. I will surely bless you and make your name famous, so that you will be a blessing.",
        "tags": [blessings_tag]
      }
    },
    "15": {
      "1": {
        "OEB": "After these things the Lord spoke to Abram in a vision, and said, ‘Fear not, Abram! I myself will defend you; your reward will be exceedingly great.’",
        "tags": [fear_tag]
      }
    },
    "50": {
      "21": {
        "OEB": "So now don’t be afraid; I will take care of you and your little ones.’ Thus he comforted them and spoke affectionately to them.",
        "tags": [grief_tag]
      }
    },
    "24": {
      "12": {
        "OEB": "He said, ‘Lord, God of my master Abraham, give me, I pray, success today, and show kindness to my master Abraham.’",
        "tags": [kindness_tag]
      }
    },
    "2": {
      "18": {
        "OEB": "Then the Lord God said, “It is not good for the human to be alone; I will make a helper suited to him.”",
        "tags": [loneliness_tag]
      }
    },
    "22": {
      "14": {
        "OEB": "So Abraham called the name of that place ‘Yahweh-yireh,’ and people say today ‘On the mountain of the Lord provision is made.’",
        "tags": [provision_tag]
      }
    }
  },
  "Revelation": {
    "22": {
      "14": {
        "OEB": "Blessed will they be who wash their robes! They will have the right to approach the tree of life, and may enter the city by the gates.",
        "tags": [blessings_tag]
      }
    },
    "1": {
      "17": {
        "OEB": "When I saw him, I fell at his feet like one dead. But he laid his hand on me and said – ‘Do not be afraid. I am the First and the Last,",
        "tags": [fear_tag]
      }
    },
    "7": {
      "12": {
        "OEB": "saying – ‘Amen. Blessing and praise, and wisdom, and thanksgiving, and honour, and power, and might be ascribed to our God for ever and ever. Amen.’",
        "tags": [gratitude_tag]
      },
      "10": {
        "OEB": "and they are crying in a loud voice — ‘Salvation be ascribed to our God who is seated on his throne, and to the Lamb.’",
        "tags": [salvation_tag]
      },
      "15": {
        "OEB": "And therefore it is that they are before the throne of God, and are serving him day and night in his sanctuary; and he who is seated on the throne will shelter them.",
        "tags": [serving_tag]
      }
    },
    "21": {
      "4": {
        "OEB": "and he will wipe away all tears from their eyes. There will be no more death, nor will there be any more grief or crying or pain. The old order has passed away.’",
        "tags": [grief_tag, health_tag, inspiration_tag, stress_tag]
      }
    },
    "3": {
      "10": {
        "OEB": "Because you kept in mind the story of my endurance, I will keep you in the hour of trial which is about to come on the whole world, the hour that will test all who are living on the earth.",
        "tags": [protection_tag]
      }
    }
  },
  "Job": {
    "4": {
      "6": {
        "OEB": "Is your piety not such that you have confidence, your blameless life such that you have hope?",
        "tags": [confidence_tag]
      },
      "3": {
        "OEB": "Your words have upheld the stumbling, and strengthened the failing knees.",
        "tags": [encouragement_tag]
      }
    },
    "6": {
      "14": {
        "OEB": "Now when Job’s three friends heard of all this misfortune that had befallen him, they came each from his own home: Eliphaz the Temanite, Bildad the Shuhite, and Zophar the Naamathite, for they had arranged to go together and condole and comfort him.",
        "tags": [friendship_tag]
      }
    },
    "1": {
      "21": {
        "OEB": "and said: Naked I came from the womb, naked shall I return. The Lord has given, the Lord has taken: blessed be the name of the Lord!",
        "tags": [grief_tag]
      }
    },
    "33": {
      "9": {
        "OEB": "‘I am pure and without transgression, I am clean, and there is no guilt in me.’",
        "tags": [guilt_tag]
      }
    },
    "38": {
      "41": {
        "OEB": "Who provides the raven with food, when its young cry to God?",
        "tags": [provision_tag]
      }
    },
    "12": {
      "12": {
        "OEB": "‘With the aged is wisdom, and in length of days understanding.’",
        "tags": [respect_tag]
      }
    }
  },
  "Micah": {
    "7": {
      "5": {
        "OEB": "Do not trust your neighbor or rely on your friend: from her that lies on your bosom guard your lips.",
        "tags": [confidence_tag]
      },
      "19": {
        "OEB": "He will tread down our iniquities; and hurl into the depths of the sea all our sins.",
        "tags": [guilt_tag]
      }
    },
    "6": {
      "8": {
        "OEB": "The Lord has told you mortals what is good, what the Lord seeks from you: it is this: to do justice, to love mercy, to live soberly with your God.",
        "tags": [kindness_tag]
      }
    },
    "5": {
      "5": {
        "OEB": "And he will be the pledge of peace. Should Assyria invade our land, and tread our palaces, seven shepherds we’ll appoint for defence, and eight men as princes.",
        "tags": [peace_tag]
      }
    }
  },
  "Ezekiel": {
    "16": {
      "15": {
        "OEB": "But you trusted in your beauty and played the prostitute because of your fame and lavished your acts of prostitution on every passer-by.",
        "tags": [confidence_tag]
      }
    },
    "18": {
      "30": {
        "OEB": "Therefore I will judge each of you according to his ways, O house of Israel, is the oracle of the Lord God. Repent and turn from all your transgressions, so that they will not be a stumbling block of iniquity to you.",
        "tags": [guilt_tag]
      }
    }
  },
  "2 Kings": {
    "18": {
      "19": {
        "OEB": "No OEB 2 Kings book available",
        "tags": [confidence_tag]
      }
    }
  },
  "2 Thessalonians": {
    "3": {
      "4": {
        "OEB": "We have confidence in you, in the Lord, that you are doing, and will continue to do, what we direct you.",
        "tags": [confidence_tag]
      },
      "3": {
        "OEB": "But the Lord will not fail you; he will give you strength, and guard you from evil.",
        "tags": [protection_tag]
      }
    },
    "2": {
      "17": {
        "OEB": "himself encourage your hearts, and strengthen you to do and to say all that is right.",
        "tags": [encouragement_tag]
      }
    }
  },
  "Philemon": {
    "1": {
      "21": {
        "OEB": "Even as I write, I have such confidence in your compliance that I know that you will do even more than I am asking.",
        "tags": [confidence_tag]
      },
      "7": {
        "OEB": "I have indeed found great joy and encouragement in your love, knowing, as I do, how the hearts of Christ's people have been cheered, friend, by you.",
        "tags": [encouragement_tag]
      }
    }
  },
  "1 Chronicles": {
    "28": {
      "20": {
        "OEB": "Then you will prosper, if you are careful to observe the statutes and ordinances which the Lord commanded Moses for Israel. Be brave and strong; do not be afraid or dismayed.",
        "tags": [courage_tag]
      },
      "9": {
        "OEB": "And you, Solomon my son, acknowledge the God of your father, and serve him with whole heart, and with a willing mind; for the Lord searches all hearts, and understands every impulse of the thoughts. If you seek him, he will let himself be found by you; but if you forsake him, he will cast you off forever.",
        "tags": [serving_tag]
      }
    },
    "16": {
      "34": {
        "OEB": "Give thanks to the Lord, for he is good; his kindness endures forever.",
        "tags": [gratitude_tag]
      }
    }
  },
  "Daniel": {
    "10": {
      "19": {
        "OEB": "He said, ‘Greatly loved man, fear not! Peace be to you! Be courageous, be courageous.’ When he spoke to me, I was strengthened and said, ‘Let my lord speak; for you have strengthened me.’",
        "tags": [courage_tag]
      }
    }
  },
  "2 Chronicles": {
    "32": {
      "7": {
        "OEB": "No OEB 2 Chronicles book available",
        "tags": [courage_tag]
      }
    },
    "35": {
      "2": {
        "OEB": "No OEB 2 Chronicles book available",
        "tags": [encouragement_tag]
      }
    }
  },
  "Ezra": {
    "10": {
      "4": {
        "OEB": "No OEB Ezra book available",
        "tags": [courage_tag]
      }
    }
  },
  "1 Samuel": {
    "23": {
      "16": {
        "OEB": "Jonathan, Saul’s son, arose and went to David into the forest and encouraged him in God.",
        "tags": [encouragement_tag]
      }
    },
    "18": {
      "1": {
        "OEB": "Jonathan and David made a covenant of friendship, because Jonathan loved him as himself.",
        "tags": [friendship_tag]
      }
    },
    "2": {
      "30": {
        "OEB": "Therefore – the Lord the God of Israel declares – I did promise that your house and your father’s house should go in and out before me forever, but now – the Lord declares – Far be it from me; for those who honour me I will honour, and those who despise me will be lightly esteemed.",
        "tags": [respect_tag]
      }
    },
    "12": {
      "24": {
        "OEB": "Only fear the Lord and serve him in truth with all your heart, for you see how he has made you great.",
        "tags": [serving_tag]
      }
    }
  },
  "Judges": {
    "20": {
      "22": {
        "OEB": "No OEB Judges book available",
        "tags": [encouragement_tag]
      }
    }
  },
  "Exodus": {
    "14": {
      "13": {
        "OEB": "But Moses said to them, ‘Do not be afraid, wait and see how the Lord will save you today: the Egyptians you see today you will never see again.",
        "tags": [fear_tag]
      },
      "14": {
        "OEB": "The Lord will fight for you, and you will be still.",
        "tags": [protection_tag]
      }
    },
    "16": {
      "4": {
        "OEB": "The Lord said to Moses, ‘I will rain bread from heaven for them, and the people will go out and gather their daily portion each day, so that I can test them to see if they will follow my instructions.’",
        "tags": [provision_tag]
      }
    },
    "20": {
      "12": {
        "OEB": "Honor your father and your mother, so that your days may be long in the land which the Lord your God is giving you.",
        "tags": [respect_tag]
      }
    },
    "15": {
      "2": {
        "OEB": "The Lord is my strength and my song, and he is become my salvation: This is my God, and I will praise him; my father’s God, and I will exalt him.",
        "tags": [salvation_tag]
      }
    },
    "33": {
      "14": {
        "OEB": "He said, “My presence will go with you, and I will give you rest.”",
        "tags": [stress_tag]
      }
    }
  },
  "Ecclesiastes": {
    "4": {
      "9": {
        "OEB": "Though one can be overpowered, two can resist; and a three-strand cord is not quickly broken.",
        "tags": [friendship_tag]
      }
    },
    "3": {
      "4": {
        "OEB": "a time to weep and to laugh; a time to mourn and a time to dance;",
        "tags": [grief_tag]
      }
    }
  },
  "Ruth": {
    "1": {
      "16": {
        "OEB": "But Ruth answered, ‘Do not urge me to leave you or to turn back from following you. Wherever you go, I will go; and wherever you stay, I will stay. Your people will be my people, and your God my God.’",
        "tags": [friendship_tag]
      }
    },
    "2": {
      "20": {
        "OEB": "Naomi said to her daughter-in-law, ‘May the blessing of the Lord rest upon the man who has not failed in his kindness to the living and to the dead.’ Then she added, ‘The man is a relative of ours, one of those who has the duty of vindicating our rights.’",
        "tags": [kindness_tag]
      }
    }
  },
  "Jonah": {
    "2": {
      "9": {
        "OEB": "But I will sacrifice to you with loud thanksgiving! I will pay that which I have vowed. Salvation is the Lord’s.",
        "tags": [gratitude_tag, salvation_tag]
      }
    },
    "4": {
      "2": {
        "OEB": "He prayed to the Lord and said, ‘Ah, now, Lord, wasn’t this what I said when I was yet in my own country? That was why I fled at first to Tarshish. For I knew that you are a gracious God, compassionate, slow to anger, kind, and relenting of punishment.’",
        "tags": [kindness_tag]
      }
    }
  },
  "Lamentations": {
    "3": {
      "22": {
        "OEB": "fresh are they every morning, and great is his faithfulness.",
        "tags": [grief_tag]
      }
    }
  },
  "Leviticus": {
    "5": {
      "5": {
        "OEB": "When one becomes guilty in any of these things, one must confess the sin committed,",
        "tags": [guilt_tag]
      }
    },
    "19": {
      "18": {
        "OEB": "You must not seek vengeance, nor bear a grudge against your own people, but love your neighbor as yourself. I am the Lord.",
        "tags": [love_tag]
      },
      "3": {
        "OEB": "Rise in the presence of the aged, respect the old, and you will fear your God: I am the Lord.",
        "tags": [respect_tag]
      }
    },
    "26": {
      "6": {
        "OEB": "And I will give peace in the land, and you will lie down, and none will make you afraid; I will remove the dangerous animals from the land, and sword will not pass through your land.",
        "tags": [peace_tag]
      }
    }
  },
  "Hosea": {
    "6": {
      "1": {
        "OEB": "Come let us return to the Lord, for he has torn us but he will heal us, he has injured us but he will bandage our wounds,",
        "tags": [health_tag]
      },
      "6": {
        "OEB": "For it is love that I delight in and not sacrifice, and knowledge of God and not burnt-offerings.",
        "tags": [kindness_tag]
      }
    },
    "2": {
      "14": {
        "OEB": "So I am going to court her, bring her into the wilderness, and speak tenderly to her.",
        "tags": [loneliness_tag]
      }
    }
  },
  "Malachi": {
    "4": {
      "2": {
        "OEB": "But to you who revere my name there will arise the sun of righteousness with healing in its wings, and you will run free like calves let out from their stall.",
        "tags": [health_tag]
      }
    },
    "1": {
      "6": {
        "OEB": "A son honours his father and servant their master. So if I am a father, where is my honour? And if I am a master, where is the one who fears me? says the Lord of hosts to you, priests who despise my name. You ask, “How have we despised your name?”",
        "tags": [respect_tag]
      }
    },
    "3": {
      "18": {
        "OEB": "Then once again you will distinguish between good and evil, between those who serve God and those who do not.”",
        "tags": [serving_tag]
      }
    }
  },
  "3 John": {
    "1": {
      "2": {
        "OEB": "Dear friend, I pray that all may be well with you and that you may have good health — I know that all is well with your soul.",
        "tags": [health_tag]
      }
    }
  },
  "Zechariah": {
    "7": {
      "9": {
        "OEB": "The Lord of hosts sent this message by the earlier prophets, when Jerusalem along with the surrounding cities were inhabited and prosperous, when the lowland and the highlands were inhabited.",
        "tags": [kindness_tag]
      }
    },
    "8": {
      "16": {
        "OEB": "These are the things that you shall do: Speak the truth to one another; render in your gates judgments that are true and make for peace;",
        "tags": [truth_tag]
      }
    }
  },
  "2 Samuel": {
    "9": {
      "3": {
        "OEB": "The king said, ‘Is there any one still left of the house of Saul to whom I may show kindness for Jonathan’s sake?’",
        "tags": [kindness_tag]
      }
    },
    "22": {
      "3": {
        "OEB": "my God, my rock, my refuge, my deliverer, my shield, and my defender, my retreat and my asylum. You save me from violence.",
        "tags": [protection_tag, salvation_tag]
      }
    }
  },
  "Nehemiah": {
    "9": {
      "17": {
        "OEB": "They refused to obey, they did not remember the wonders which you had done among them, they became stubborn, and set up a leader to return to their slavery in Egypt. But you are a God ready to pardon, gracious and merciful, slow to anger, and of great kindness, and did not forsake them.",
        "tags": [kindness_tag]
      },
      "15": {
        "OEB": "You gave them bread from heaven for their hunger, and brought forth water for them out of the rock for their thirst. You told them to go in to possess the land which you had sworn to give them.",
        "tags": [provision_tag]
      }
    }
  },
  "Joel": {
    "2": {
      "13": {
        "OEB": "Rend your hearts and not your garments, and turn to the Lord your God; for he indeed is gracious and merciful, slow to anger and plenteous in love, and relents of the evil.",
        "tags": [kindness_tag]
      }
    }
  },
  "Jeremiah": {
    "9": {
      "24": {
        "OEB": "but rather in this should the boaster exult – that he knows me and understands that I am the Lord who exercises kindness, justice, and righteousness on earth: for in these I delight, is the Lord’s oracle.",
        "tags": [kindness_tag]
      }
    },
    "29": {
      "11": {
        "OEB": "For I know the plans that I purpose towards you – oracle of the Lord – plans of prosperity and not misfortune, to give you a future and a hope.",
        "tags": [peace_tag]
      }
    },
    "17": {
      "7": {
        "OEB": "They are like a tree planted by water, that sends out its roots by the stream, and does not fear when heat comes, for its leaves remain green, and is not anxious in the year of drought, for it does not cease to bear fruit.",
        "tags": [stress_tag, trust_tag]
      }
    }
  },
  "Song of Solomon": {
    "8": {
      "6": {
        "OEB": "Set me as a seal on your heart, as a seal on your arm. For love is strong as death; its jealousy hard as Sheol. Its flashes are flashes of fire, a very flame of God.",
        "tags": [love_tag]
      }
    }
  },
  "Nahum": {
    "1": {
      "7": {
        "OEB": "The Lord is good, a stronghold in the day of trouble; he knows those who take refuge in him.",
        "tags": [protection_tag, trust_tag]
      }
    }
  },
  "1 Kings": {
    "17": {
      "4": {
        "OEB": "For the Lord, Israel’s God says: “The jar of flour will not be used up nor the jug of oil fail, until the day that the Lord sends rain on the earth.”",
        "tags": [provision_tag]
      }
    }
  }
}

bible.each do |book, chapter| 
  chapter.each do | chapter, verse|
    verse.each do |verse, text_and_tags|
      tags = text_and_tags.delete(:tags)
      text_and_tags.each do |source, text|
        begin
          Verse.create!(book:, chapter: chapter.to_s.to_i, verse: verse.to_s.to_i, source: source.to_s, text:, tags:)
        rescue => exception
          puts "Error creating verse: #{exception.message}"
          puts "Book: #{book}, Chapter: #{chapter}, Verse: #{verse}, Source: #{source}, Text: #{text}, Tags: #{tags.inspect}"
        end
        
      end
    end
  end
end


# Create support user
support_user = User.find_or_create_by!(email: 'support@promesas.com') do |user|
  user.password = ENV.fetch('SUPPORT_USER_PASSWORD')
  user.username = 'Support'
  user.first_name = 'Support'
  user.last_name = 'Team'
  # user.id = 911
end

# Create default trial plan
Plan.default_trial_plan

# Create Basic plan
Plan.find_or_create_by!(name: 'Basic') do |plan|
  plan.amount = 0
  plan.currency = 'usd'
  plan.interval = 'month'
end



20.times do
  User.create!(email: Faker::Internet.email, password: Faker::Internet.password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end