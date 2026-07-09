import pool from "./config/database.js";
import fs from "fs/promises";
import path from "path";
import chalk from "chalk";

export async function extract() {

    try {

        console.log(chalk.blue("\n========== DLOADER : EXTRACT ==========\n"));

        // récupérer toutes les tables
        const [tables] = await pool.query("SHOW TABLES");

        const database = {};

        // parcourir toutes les tables
        for (const table of tables) {

            const tableName = Object.values(table)[0];

            console.log(chalk.yellow(`Extracting ${tableName}...`));

            const [rows] = await pool.query(`SELECT * FROM ${tableName}`);

            database[tableName] = rows;

        }

        // créer le dossier output si nécessaire
        await fs.mkdir("output", { recursive: true });

        // sauvegarder
        await fs.writeFile(
            path.join("output", "extracted.json"),
            JSON.stringify(database, null, 4)
        );

        console.log(chalk.green("\nExtraction completed successfully."));
        console.log(chalk.green("File created: output/extracted.json"));

    }

    catch (error) {

        console.error(chalk.red(error));

    }

    finally {

        await pool.end();

    }

}

