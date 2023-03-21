--
-- Class Todo as table todo
--

CREATE TABLE "todo" (
  "id" serial,
  "title" text NOT NULL,
  "isCompleted" boolean NOT NULL,
  "createdTime" timestamp without time zone NOT NULL,
  "description" text NOT NULL
);

ALTER TABLE ONLY "todo"
  ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


