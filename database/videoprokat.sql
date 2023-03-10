CREATE TABLE "client" (
  "id" INTEGER PRIMARY KEY,
  "FIO" varchar,
  "passportNumber" int,
  "phoneNumber" varchar,
  "clientName" varchar
);

CREATE TABLE "genre" (
  "id" INTEGER PRIMARY KEY,
  "genreName" varchar
);

CREATE TABLE "disk" (
  "id" INTEGER PRIMARY KEY,
  "genreId" int,
  "diskName" varchar
);

CREATE TABLE "orders" (
  "id" INTEGER PRIMARY KEY,
  "diskId" int,
  "workerId" int,
  "cost" int,
  "date" timestamp
);

CREATE TABLE "worker" (
  "id" INTEGER PRIMARY KEY,
  "name" varchar,
  "clientId" int
);

ALTER TABLE "disk" ADD FOREIGN KEY ("genreId") REFERENCES "genre" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("diskId") REFERENCES "disk" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("workerId") REFERENCES "worker" ("id");

ALTER TABLE "worker" ADD FOREIGN KEY ("clientId") REFERENCES "client" ("id");
