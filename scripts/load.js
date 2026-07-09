import {MongoClient} from "mongodb";
import fs from "fs/promises";
import dotenv from "dotenv";


dotenv.config();


export async function load(){


    const client = new MongoClient(
        process.env.MONGO_URI
    );


    await client.connect();


    const database = client.db(
        process.env.MONGO_DATABASE
    );


    const collection =
        database.collection("clients");


    const documents = JSON.parse(
        await fs.readFile(
            "output/transformed.json",
            "utf-8"
        )
    );


    await collection.insertMany(documents);


    console.log(
        "Migration MongoDB terminée"
    );


    await client.close();


}
