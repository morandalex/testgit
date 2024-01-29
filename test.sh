#sudo rm -fr "$(git rev-parse --git-dir)/refs/original/"
git filter-branch --env-filter \
    'if [ $GIT_COMMIT =  ffd85a70135d00f466b254812b485442f56afeaf  ]
     then
         export GIT_AUTHOR_DATE="Tue Sep 6 20:20:00 2022 +0200"
         export GIT_COMMITTER_DATE="Tue Sep 6 20:20:00 2022 +0200"
     fi'
