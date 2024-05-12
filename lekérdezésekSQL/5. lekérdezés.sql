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
                "--Adott kocsiról melyik értékesítőnél lehet érdeklődni telefonon\r\n",
                "SELECT\tat.rendszam AS 'Rendszám',\r\n",
                "\t\taut.marka AS 'Márka',\r\n",
                "        aut.tipus AS 'Típus',\r\n",
                "        k.nev AS 'Értékesítő neve',\r\n",
                "        t.telefonszam AS 'Telefonszám'\r\n",
                "FROM\tauto_tulajdonsag at JOIN tranzakcio tr ON at.rendszam = tr.rendszam\r\n",
                "\t\tJOIN auto_tipus aut ON at.modell_id = aut.modell_id\r\n",
                "\t\tJOIN eladasi_infok ei ON tr.tranzakcio_id = ei.tranzakcio_id\r\n",
                "        JOIN kereskedok k ON ei.ker_id = k.ker_id\r\n",
                "        JOIN telefon t ON k.telefon_id = t.telefon_id"
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