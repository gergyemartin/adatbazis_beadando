{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "--Kereskedőnként mennyi a maximális haszonszint,amit hozhat az összes rá bízott eladás után\r\n",
                "SELECT\tk.nev AS 'Kereskedő',\r\n",
                "\t\tSUM(optimalis_eladasi_ar - minimum_eladasi_ar) AS 'Maximum elérhető haszon'\r\n",
                "FROM eladasi_infok ei JOIN kereskedok k on ei.ker_id = k.ker_id\r\n",
                "group by k.nev "
            ],
            "metadata": {
                "azdata_cell_guid": "c1730850-633e-4e48-8395-d1f3505dab22",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}