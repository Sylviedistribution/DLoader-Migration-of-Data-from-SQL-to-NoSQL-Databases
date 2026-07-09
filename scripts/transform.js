import fs from "fs/promises";


export async function transform(){

    const raw = JSON.parse(
        await fs.readFile(
            "output/extracted.json",
            "utf-8"
        )
    );


    const clients = raw.clients;
    const commandes = raw.commandes;


    const documents = clients.map(client => {


        return {

            _id: client.id,

            username: client.username,

            email: client.email,

            commandes: commandes.filter(
                commande =>
                commande.clientId === client.id
            )

        };


    });


    await fs.writeFile(
        "output/transformed.json",
        JSON.stringify(documents,null,2)
    );


    console.log("Transformation terminée");

}


