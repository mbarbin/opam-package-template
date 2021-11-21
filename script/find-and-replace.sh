#!/bin/bash -e
# This is a quick script to rename files in repo and replace
# occurrences of strings in files, with the values matching your
# package settings.
#
# EDIT VARIABLES BELOW:

package_public_name='my-package-name'
package_lib_name='my_package_name'
username='Fistname Lastname'
github_username='my-githubusername'

# END OF EDITABLE SECTION
#
# When done editing, run from the root with your favorite shell, for
# example:
#
# $ bash -x script/find-and-replace.sh

# The rest of this file is the executable portion which you shouldn't
# need to edit.

# The strings as they are when checking out the repository
package_public_name__template='my-package'
package_lib_name__template='my_package'
username__template='Your Username'
github_username__template='githubuser123'

# Variables that derive from other variables:
package_module_name__template="${package_lib_name__template^}"
package_module_name="${package_lib_name^}"

# 1. Rename files

mv_cmd1="mv ${package_public_name__template}.opam ${package_public_name}.opam"

if [ -d ".git" ]; then
    git $mv_cmd1 || true
else
    $mv_cmd1 || true
fi

# 2. Rename occurrences of string in files

find . -type f | grep -vE '^./(.git|_build|script)/' \
 | xargs sed -i \
  -e "s/${package_public_name__template}/${package_public_name}/g" \
  -e "s/${package_lib_name__template}/${package_lib_name}/g" \
  -e "s/${package_module_name__template}/${package_module_name}/g" \
  -e "s/${username__template}/${username}/g" \
  -e "s/${github_username__template}/${github_username}/g" \
