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
                "-- A lekérdezés megadja a legtöbb kilóméterrel rendelkező autó márkáját és típusát\r\n",
                "SELECT marka, tipus\r\n",
                "FROM auto_tipus\r\n",
                "WHERE modell_id = (\r\n",
                "  SELECT modell_id\r\n",
                "  FROM auto_tulajdonsag\r\n",
                "  WHERE km = (\r\n",
                "    SELECT MAX(km)\r\n",
                "    FROM auto_tulajdonsag))"
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