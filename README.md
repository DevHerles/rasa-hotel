# Steps to build a new bot

1. Add intent *`(book_room)`* in **nlu.yml**
1. Add intent *`(book_room)`* in **domain.yml** in `intents` secction
1. Add utter *`(utter_book_room)`* in **domain.yml** in `responses` secction
1. Add intent *`(number_of_rooms)`* in **nlu.yml**. Remember there is a `number_of_rooms` entity
1. Add entity *`(number_of_rooms)`* in **domain.yml** in `entities` secction
1. Add intent *`(number_of_rooms)`* in **domain.yml** in `intents` secction
1. Add utter *`(utter_number_of_rooms)`* in **domain.yml** in `responses` secction

and so on...

1. Add *`bookin room`* paths in **stories.yml**

# For socket.io

execute:

```bash
rasa run --enable-api --cors "*"
```

in another terminal, execute:

```bash
python -m http.server 8000
```

in your web browser, navigate to:

http://localhost:8000/