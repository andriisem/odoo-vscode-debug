Usage:

```
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Odoo Remote",
            "type": "python",
            "request": "attach",
            "port": 3000,
            "host": "0.0.0.0",
            "pathMappings": [
                {   
                    "localRoot": "...",
                    "remoteRoot": "/mnt/extra-addons"
                },
                {   
                    "localRoot": "...",
                    "remoteRoot": "/mnt/odoo-addons"
                },
            ]
        },
    ]
}
```