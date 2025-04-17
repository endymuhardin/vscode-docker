FROM codercom/code-server:latest

# Install required system packages for SDKMAN
USER root
RUN apt-get update && \
    apt-get install -y zip unzip && \
    rm -rf /var/lib/apt/lists/*

# Switch back to coder user
USER coder

# Install SDKMAN and Java 21
RUN bash -c "\
    curl -s 'https://get.sdkman.io' | bash && \
    source /home/coder/.sdkman/bin/sdkman-init.sh && \
    sdk install java 21-tem && \
    echo 'export JAVA_HOME=/home/coder/.sdkman/candidates/java/current' >> /home/coder/.bashrc && \
    echo 'export PATH=\$JAVA_HOME/bin:\$PATH' >> /home/coder/.bashrc \
"

# Set JAVA_HOME for the container environment
ENV JAVA_HOME=/home/coder/.sdkman/candidates/java/current
ENV PATH=$JAVA_HOME/bin:$PATH

# Install VS Code extensions
RUN code-server --install-extension vscjava.vscode-java-pack \
    && code-server --install-extension rangav.vscode-thunder-client \
    && code-server --install-extension saoudrizwan.claude-dev \
    && code-server --install-extension rooveterinaryinc.roo-cline \
    && code-server --install-extension mechatroner.rainbow-csv
