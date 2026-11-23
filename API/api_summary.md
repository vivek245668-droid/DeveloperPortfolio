# API Interaction Summary



## 1. What is a REST API?



A REST API allows different software applications to communicate over the internet using HTTP methods. It sends and receives data, commonly in JSON format.



## 2. HTTP Status Codes



- **200 OK:** The request was successful, and the server returned the requested data.

- **404 Not Found:** The requested resource could not be found on the server.



## 3. GitHub API



The GitHub REST API was used to retrieve public profile information for the user `ralcoralson`.



The response was saved in `github_profile.json`.



The following `jq` command extracted selected information:



```bash

cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'

```



Explanation:

- `jq` processes JSON data.

- `.name` extracts the GitHub user's name.

- `.public_repos` extracts the number of public repositories.

- `.followers` extracts the follower count.

- `.created_at` extracts the account creation date.



## 4. JSONPlaceholder API



The JSONPlaceholder API was used to download sample posts.



The response was saved in `sample_posts.json`.



The command below counted the posts:



```bash

cat API/sample_posts.json | jq length

```



**Result:** 100 posts were retrieved successfully.



## 5. Conclusion



Both APIs were accessed successfully using curl. The downloaded JSON responses were processed using jq to extract and count useful information.

