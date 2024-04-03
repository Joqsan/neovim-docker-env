docker run \
--rm \
-it \
--mount type=bind,source=./.config,target=/root/.config \
--mount type=bind,source=./example_project,target=/root/project \
--entrypoint=/bin/bash \
neovim-zero