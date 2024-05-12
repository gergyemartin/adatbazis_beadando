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
                "--Raktárankénti kocsik száma, átlagos km óraszám és listaár. A végén összegezve mindent\r\n",
                "SELECT\tIIF(GROUPING(th.raktar_nev) = 1,'Összesen',th.raktar_nev) AS 'Raktár helye',\r\n",
                "\t\tCOUNT(at.modell_id) AS 'Kocsik raktáranként',\r\n",
                "        ROUND(AVG(at.km),0) AS 'Km óra állás átlagosan',\r\n",
                "        ROUND(AVG(at.listaar),0) AS 'Átlagos listaár'\r\n",
                "FROM\tauto_tulajdonsag at JOIN auto_helye ah ON at.rendszam = ah.rendszam\r\n",
                "\t\tJOIN tarolasi_helyek th ON ah.raktar_id = th.raktar_id\r\n",
                "GROUP BY ROLLUP(th.raktar_nev)"
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