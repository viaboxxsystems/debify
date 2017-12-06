# Debify #

Extension of spotify/debify to include support for xz compression. Debify generates an archive (repo.tar.gz) from a set of Debian packages for use with Aptly.

## Building ##

    docker build -t docker.intra.viaboxxsystems.de/viaboxx/debify . 
    docker push docker.intra.viaboxxsystems.de/viaboxx/debify 

## Running ##

Example:
    
    docker run --rm -e APTLY_DISTRIBUTION=delymate -e APTLY_ARCHITECTURES=amd64,i383,armhf -v $(pwd):/debs -v ~/.gnupg:/.gnupg docker.intra.viaboxxsystems.de/viaboxx/debify:latest 
