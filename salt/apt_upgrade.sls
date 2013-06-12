apt-upgrade:
    cmd.run:
        - name: "export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get upgrade -y && touch /home/lantern/apt_updated"
        - unless: "[ -e /home/lantern/apt_updated ]"
        - user: root
        - group: root
        - order: 1
