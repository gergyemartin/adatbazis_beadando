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
                "--Mennyi bónuszt kapnak az egyes kereskedők, ha eladják az összes autót\r\n",
                "SELECT\tIIF(GROUPING(k.nev) = 1,'Összesen',k.nev) AS 'Kereskedő neve',\r\n",
                "\t\tSUM(k.bonusz) AS 'Összes bónusz'\r\n",
                "FROM kereskedok k JOIN eladasi_infok e ON k.ker_id = e.ker_id\r\n",
                "GROUP BY ROLLUP(k.nev)"
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