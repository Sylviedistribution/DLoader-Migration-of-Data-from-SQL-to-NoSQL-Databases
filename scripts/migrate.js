import chalk from "chalk";

import { extract } from "./extract.js";
import { transform } from "./transform.js";
import { load } from "./load.js";

async function migrate() {

    console.log(chalk.blue("\n========== DLOADER ETL ==========\n"));

    console.log(chalk.yellow("Step 1/3 : Extract"));
    await extract();

    console.log(chalk.yellow("\nStep 2/3 : Transform"));
    await transform();

    console.log(chalk.yellow("\nStep 3/3 : Load"));
    await load();

    console.log(chalk.green("\nMigration completed successfully!"));

}

migrate().catch(console.error);