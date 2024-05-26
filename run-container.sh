docker run \
--rm \
-it \
--mount type=bind,source=./.config,target=/root/.config \
--mount type=bind,source=./example_project,target=/root/project \
--mount type=bind,source=./start-nvim.sh,target=/root/start-nvim.sh \
--entrypoint=/bin/bash \
neovim-zero