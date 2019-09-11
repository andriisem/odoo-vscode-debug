FROM odoo:10

USER root
RUN pip install --upgrade pip
RUN pip install ptvsd

RUN { \
    echo "#!/usr/bin/env python"; \
    echo ""; \
    echo "# set server timezone in UTC before time module imported"; \
    echo "__import__('os').environ['TZ'] = 'UTC'"; \
    echo "import odoo"; \
    echo ""; \
    echo "import sys"; \
    echo "if len(sys.argv) < 2 or sys.argv[1] != 'shell':"; \
    echo "    import ptvsd"; \
    echo "    ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)"; \
    echo "    print('>>> VS Code debugger can be used!')"; \
    echo ""; \
    echo "if __name__ == '__main__':"; \
    echo "    odoo.cli.main()"; \
} > /usr/bin/odoo

COPY odoo.conf /etc/odoo/

USER odoo
