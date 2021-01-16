FROM jekyll/jekyll

WORKDIR /srv/jekyll
COPY Gemfile .


RUN gem install bundler
RUN bundle install
#RUN bundle install --clean --quiet
#Removed previous line to get to compile on new machine, some commands deprecated
#Also, Gemfile.lock may need to be deleted

EXPOSE 4000

CMD [ "/usr/gem/bin/bundle", "exec", "/usr/local/bundle/bin/jekyll", "serve", "--port", "4000", "--host", "0.0.0.0" ]

STOPSIGNAL 2
