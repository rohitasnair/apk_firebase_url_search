# Apk Firebase Url Search
Searches for firebase url embedded in apk and checks for open database
### Usage
  1. [Install apk tool ](https://ibotpeaches.github.io/Apktool/install/)
  2. Clone this repo
  3. chmod +x *
  4. Move apk to test to same folder as script
  5. Execute 1st file by 
  ```bash
./firebase.sh
```
  > This will extract all apk into corresponding folder dont reuse this multiple times as files will get rewrite
  > This script will also shows all vulnarable url by a neat json response
  > All url with no-auth/error is not accessible
  6. To see only response execute 
  ```bash
./check.sh
```
