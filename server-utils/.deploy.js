module.exports = {
    // Note that the following IPs here aren't the ones I own... They were randomly generated, except for the hydrogen one... That's my home...
    hosts: [
        {
            name: "strontium",
            ip: "129.18.20.102",
            identityFile: ".ssh/strontium",
            user: "root"
        },
        {
            name: "cadmium",
            ip: "114.18.99.137",
            identityFile: ".ssh/cadmium",
            user: "root"
        },
        {
            name: "iron",
            ip: "44.176.22.243",
            identityFile: ".ssh/iron",
            user: "root"
        },
        {
            name: "carbon",
            ip: "132.173.36.246",
            identityFile: ".ssh/carbon",
            user: "root"
        },
        {
            name: "hydrogen",
            ip: "127.0.0.1",
            identityFile: ".ssh/id_rsa",
            user: "root"
        },
    ],
    scripts: [
        {
            name: "servers:update",
            file: ".scripts/update-servers.sh",
        },
        {
            name: "servers:restart-services",
            file: ".scripts/restart-services.sh",
        },
        {
            name: "servers:upgrade",
            file: ".scripts/upgrade.sh",
        },
        {
            name: "servers:update-yarn",
            file: ".scripts/update-yarn.sh",
        },
        {
            name: "servers:update-composer",
            file: ".scripts/update-composer.sh",
        },
    ]
}
