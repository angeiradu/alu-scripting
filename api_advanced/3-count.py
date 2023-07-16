#!/usr/bin/python3
""" Module for a function that queries the Reddit API recursively."""


import requests


def count_words(subreddit, word_list, after='', word_dict=None):
    if word_dict is None:
        word_dict = {word.lower(): 0 for word in word_list}

    if after is None:
        sorted_words = sorted(word_dict.items(), key=lambda x: (-x[1], x[0]))
        for word, count in sorted_words:
            if count > 0:
                print(f'{word}: {count}')
        return 'OK'

    url = f'https://www.reddit.com/r/{subreddit}/hot/.json'
    headers = {'User-Agent': 'redquery'}
    params = {'limit': 100, 'after': after}
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)

    if response.status_code != 200:
        return None

    try:
        data = response.json()['data']
        hot = data['children']
        aft = data['after']
        for post in hot:
            title = post['data']['title']
            lower = [word.lower() for word in title.split(' ')]
            for word in word_dict.keys():
                word_dict[word] += lower.count(word)
    except Exception:
        return None

    return count_words(subreddit, word_list, aft, word_dict)
