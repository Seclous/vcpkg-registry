# vcpkg-registry
Seclous' vcpkg registry


## Adding a new port / version

- Create / adapt files under `ports`
- Create / update the version under `versions`
- To get the git-tree id:
  ```
  git add ports/my-port
  git commit -m 'temporary commit'
  git rev-parse HEAD:ports/my-port
  ```
- Update the id and amend the commit `git commit --amend`
