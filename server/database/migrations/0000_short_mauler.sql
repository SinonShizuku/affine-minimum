CREATE TABLE IF NOT EXISTS "user" (
	"id" serial NOT NULL,
	"name" text,
	"email" text,
	"password" text,
	"created_at" timestamp
);
