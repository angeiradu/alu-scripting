#!/usr/bin/python3
"""
Contains the number_of_subscribers function
"""
import requests


def number_of_subscribers(subreddit):
    """returns the number of subscribers for a given subreddit"""
    if subreddit is None or type(subreddit) is not str:
        return 0
    rq = requests.get(
        'http://www.reddit.com/r/{}/about.json'.format(subreddit),
        headers={'User-Agent':
                 'api_advanced:project:v1.0.0 (by /i/ange_movie_md)'}
    ).json()
    subs = rq.get("data", {}).get("subscribers", 0)
    return subs
