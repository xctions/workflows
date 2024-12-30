from github import Github
import os

RUN_ID=os.getenv("RUN_ID")

def get_pr(owner, repo, token):
    g = Github(token)
    
    repo = g.get_repo(f"{owner}/{repo}")
    prs = repo.get_pulls(state="open")
    for pr in prs:
        yield pr