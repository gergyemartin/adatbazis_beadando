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
                "-- CREATE TABLE commands\r\n",
                "CREATE TABLE auto_helye (\r\n",
                "    rendszam                              VARCHAR(255) NOT NULL,\r\n",
                "    raktar_id                             NUMERIC NOT NULL,\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE auto_tipus (\r\n",
                "    modell_id NUMERIC NOT NULL,\r\n",
                "    marka     VARCHAR(255) NOT NULL,\r\n",
                "    tipus     VARCHAR(255) NOT NULL\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE auto_tulajdonsag (\r\n",
                "    rendszam              VARCHAR(255) NOT NULL,\r\n",
                "    modell_id             NUMERIC NOT NULL,\r\n",
                "    hasznalt              NUMERIC NOT NULL,\r\n",
                "    allapot               NUMERIC NOT NULL,\r\n",
                "    km                    NUMERIC NOT NULL,\r\n",
                "    listaar               NUMERIC NOT NULL,\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE eladasi_infok (\r\n",
                "    tranzakcio_id                        NUMERIC NOT NULL,\r\n",
                "    ker_id                               NUMERIC NOT NULL,\r\n",
                "    optimalis_eladasi_ar                 NUMERIC NOT NULL,\r\n",
                "    minimum_eladasi_ar                   NUMERIC NOT NULL,\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE kereskedok (\r\n",
                "    ker_id     NUMERIC NOT NULL,\r\n",
                "    nev        VARCHAR(255) NOT NULL,\r\n",
                "    telefon_id NUMERIC NOT NULL,\r\n",
                "    bonusz     NUMERIC NOT NULL\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE tarolasi_helyek (\r\n",
                "    raktar_id  NUMERIC NOT NULL,\r\n",
                "    raktar_nev VARCHAR(255) NOT NULL\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE telefon (\r\n",
                "    telefon_id            NUMERIC NOT NULL,\r\n",
                "    telefonszam           VARCHAR(255) NOT NULL,\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE tranzakcio (\r\n",
                "    tranzakcio_id                         NUMERIC NOT NULL,\r\n",
                "    rendszam                              VARCHAR(255) NOT NULL,\r\n",
                ");\r\n",
                "\r\n",
                "CREATE TABLE veteli_tulajdonsag (\r\n",
                "    rendszam                              VARCHAR(255) NOT NULL,\r\n",
                "    elado_neve                            VARCHAR(255) NOT NULL,\r\n",
                "    vetelar                               NUMERIC NOT NULL,\r\n",
                "    vetel_idopont                         DATE NOT NULL,\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "f9d725f2-251a-4986-b942-092ff5974b76",
                "language": "sql"
            },
            "outputs": [],
            "execution_count": null
        }
    ]
}