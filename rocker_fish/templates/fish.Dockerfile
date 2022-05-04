RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
  curl \
  fish \
  fzf \
  git \
  python3-pip \
  xsel \
  && apt-get clean \
  && pip3 install argcomplete \
  && fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher' \
  && fish -c 'fisher install \
  edc/bass \
  jethrokuan/fzf \
  jorgebucaran/fisher \
  kenji-miyake/auto-source-setup-bash.fish \
  kenji-miyake/colcon-abbr.fish \
  kenji-miyake/colcon-clean.fish \
  kenji-miyake/reload.fish \
  kenji-miyake/vcd.fish \
  oh-my-fish/plugin-pbcopy \
  rafaelrinaldi/pure \
  '

RUN echo "exec fish" >> "$HOME"/.bashrc
