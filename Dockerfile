FROM codercom/code-server:latest

# Install SDKMAN and Java 21
RUN curl -s "https://get.sdkman.io" | bash && \
    bash -c "source /home/coder/.sdkman/bin/sdkman-init.sh && sdk install java 21-tem"

# Set JAVA_HOME
ENV JAVA_HOME=/home/coder/.sdkman/candidates/java/current
ENV PATH=$JAVA_HOME/bin:$PATH

# Install VS Code extensions
RUN code-server --install-extension vscjava.vscode-java-pack \
    && code-server --install-extension rangav.vscode-thunder-client \
    && code-server --install-extension saoudrizwan.claude-dev \
    && code-server --install-extension roocode.roocode \
    && code-server --install-extension mechatroner.rainbow-csv
