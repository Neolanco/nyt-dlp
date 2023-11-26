FROM alpine:latest

# Install dependencies
RUN apk -U add --no-cache yt-dlp ffmpeg curl

# Create the necessary directories
RUN mkdir -p /nyt-dlp/modules-script
RUN mkdir -p /nyt-dlp/modules
RUN mkdir -p /nyt-dlp/output

# Copy the script into the container
COPY void.sh /nyt-dlp/void.sh
COPY all.sh /nyt-dlp/modules-script/all.sh

# Make the script executable
RUN chmod +x /nyt-dlp/void.sh

# Set the working directory
WORKDIR /nyt-dlp/

# Command to run when the container starts
CMD ["sh", "-c", "/nyt-dlp/void.sh"]
