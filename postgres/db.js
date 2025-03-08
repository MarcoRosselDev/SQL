import 'dotenv/config';
console.log(process.env.NAME_PORT);

import pgpPromise from 'pg-promise';
const pgp = pgpPromise({});
const {PASS_PSQL, PORT_PSQL, DATABASE, NAME_PORT, HOST} = process.env;

//const db = pgp(`${DATABASE}://${NAME_PORT}:${PASS_PSQL}@host:${PORT_PSQL}/database`);
const db = pgp(`${DATABASE}://${NAME_PORT}:${PASS_PSQL}@${HOST}:${PORT_PSQL}/${DATABASE}`);

export default db;