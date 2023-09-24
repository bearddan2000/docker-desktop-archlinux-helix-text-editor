FROM archlinux

ENV APP helix

ENV DISPLAY :0

WORKDIR /app

# update
RUN	pacman -Syy

# install
RUN pacman -S --noconfirm $APP

CMD "${APP}"