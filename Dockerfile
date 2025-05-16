FROM odoo:18.0

USER root

# Odoo source requirements
RUN apt-get purge -y odoo \
    && rm -f /etc/apt/sources.list.d/pgdg.list \
    && rm -rf /var/lib/apt/lists/*

COPY odoo18/requirements.txt /requirements.txt
RUN pip3 install --upgrade -r /requirements.txt --break-system-packages && \
    pip3 install PyJWT --break-system-packages && \
    pip3 cache purge

RUN mkdir -p /opt/
WORKDIR /opt/
COPY . /opt/
COPY odoo18/setup/odoo /opt/odoo18/odoo-bin
RUN chmod a+x /opt/odoo18/odoo-bin
RUN useradd -m odoo
# RUN chown odoo /opt/odoo18/odoo-bin

USER odoo

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/opt/odoo18/odoo-bin"]
