
CREATE EXTENSION pgcrypto;

--
--      USERS
--
CREATE TABLE users
(
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email character varying(255) NOT NULL,
  password character varying(255) NOT NULL,
  name character varying(255) NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT NOW()
);

CREATE TABLE posts
(
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) NOT NULL,
  content text DEFAULT 'Lorem ipsum'
);

INSERT INTO users(id, email, password, name) VALUES ('fde08ee6-5fb9-4c4f-9b40-dc2ad69bb855', 'samuel@grep.to', 'azerty', 'Samuel');
INSERT INTO users(id, email, password, name) VALUES ('e1c10ca1-60c8-405c-a9f3-3ff41456ca9f', 'foobar@gmail.com', '123456', 'Foobar');

INSERT INTO posts(user_id, content) VALUES ('fde08ee6-5fb9-4c4f-9b40-dc2ad69bb855', 'Lorem ipsum');
INSERT INTO posts(user_id, content) VALUES ('fde08ee6-5fb9-4c4f-9b40-dc2ad69bb855', 'Hello world');
INSERT INTO posts(user_id, content) VALUES ('e1c10ca1-60c8-405c-a9f3-3ff41456ca9f', 'Devfest is great!');
