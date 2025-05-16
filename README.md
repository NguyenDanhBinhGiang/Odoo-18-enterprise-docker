# Odoo-enterprise-docker
Build docker image from Odoo enterprise source code
# Usage
- First, clone this repo.
- Download Odoo Enterprise source code from [Odoo download page](https://www.odoo.com/page/download).
- Extract the source code into this repo's folder, then rename the source code folder to odoo18. The folder should look like thi afterward:
  ```
  Odoo-enterprise-docker/
  ├── odoo18
  │   ├── LICENSE
  │   ├── README.md
  │   ├── requirements.txt
  │   ├── odoo
  │   ├── setup
  │   └─ ...
  ├── Dockerfile
  ├── .dockerignore
  ├── .gitignore
  ├── LICENSE
  └── README.md
  ```
- Run `docker build` to build the image or use it in docker compose.
  ```
  docker build . -t <your_user_name>/odoo-18-enterprise
  ```
