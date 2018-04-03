# Emergency commit of whatever is currently being worked on.
#!/bin/bash

commit_time=`date`;
current_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`;

echo "*** EMERGENCY COMMIT INITIATED ***";
echo "Committing branch $current_branch @ $commit_time;"

git add .
if (($?)); then
  echo "failed to add"
  exit 0;
fi

git commit -m "EMERGENCY COMMIT - branch $current_branch @ $commit_time";
if (($?)); then 
  echo "failed to commit"
  exit 0;
fi

git push origin $current_branch;
if (($?)); then
  echo "failed to push"
  exit 0;
fi

echo "*** EMERGENCY COMMIT COMPLETE ***";
