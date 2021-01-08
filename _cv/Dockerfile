FROM rocker/tidyverse

LABEL name="datadrivencv" \
	maintainer="Yohan Alexander <yohanfranca@gmail.com>" \
	version="1.0" \
	description="datadrivencv docker compilation"

RUN Rscript -e "remotes::install_github('rstudio/pagedown')"

# Install deps + add Chrome Stable + purge all the things
RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	--no-install-recommends \
	&& curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
	&& apt-get update && apt-get install -y \
	google-chrome-unstable \
	fontconfig \
	fonts-ipafont-gothic \
	fonts-wqy-zenhei \
	fonts-thai-tlwg \
	fonts-kacst \
	fonts-symbola \
	fonts-noto \
	fonts-freefont-ttf \
	--no-install-recommends \
	&& apt-get purge --auto-remove -y curl gnupg \
	&& rm -rf /var/lib/apt/lists/*

# Add Chrome as a user
#RUN groupadd -r chrome && useradd -r -g chrome -G audio,video chrome \
#	&& mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome

# Run Chrome non-privileged
#USER chrome

# Expose port 9222
#EXPOSE 9222

# Autorun chrome headless with no GPU
#ENTRYPOINT [ "google-chrome" ]
#CMD [ "--headless", "--disable-gpu", "--remote-debugging-address=0.0.0.0", "--remote-debugging-port=9222"
