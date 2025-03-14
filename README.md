# OpenVPN Instance Management Scripts

A collection of useful shell scripts for managing OpenVPN server instances. If you use [easy-openvpn-server](https://github.com/idlab-discover/easy-openvpn-server)


## Features

- Add new clients (`addclient.sh`)
- Remove existing clients (`delclient.sh`)
- List current clients (`listclients.sh`)
- Install and configure OpenVPN server (`install.sh`)

## Usage

### Installation

```bash
./install.sh
```

This script installs and performs basic configuration of the OpenVPN server.

### Add New Client

```bash
./addclient.sh [client_name]
```

Generates new client certificates and configuration files with the specified name. The generated OVPN profile will be stored in the `profiles` directory.

### Remove Client

```bash
./delclient.sh [client_name]
```

Removes the specified client's certificates and related configurations.

### List Clients

```bash
./listclients.sh
```

Displays a list of all configured OpenVPN clients.

## Directory Structure

- `profiles/`: Contains all generated client OVPN configuration files
  - Each client profile is named as `[client_name].ovpn`
  - These files can be directly imported into OpenVPN clients

## System Requirements

- Linux operating system
- Root access or sudo privileges
- OpenVPN package

## Important Notes

- All scripts must be run with root privileges
- Client names can only contain letters, numbers, and hyphens (-)
- It is recommended to backup existing configurations before use
- Generated OVPN profiles in the `profiles` directory should be securely transferred to clients

## License

This project is distributed under the MIT License.
