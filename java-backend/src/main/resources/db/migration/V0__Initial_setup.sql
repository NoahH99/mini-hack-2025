CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users
(
    id               UUID PRIMARY KEY             DEFAULT uuid_generate_v4(),
    first_name       VARCHAR(75)         NOT NULL,
    last_name        VARCHAR(75)         NOT NULL,
    full_name        VARCHAR(151)        NOT NULL GENERATED ALWAYS AS (first_name || ' ' || last_name) STORED,
    email            VARCHAR(256) UNIQUE NOT NULL,
    account_status   VARCHAR(20)         NOT NULL DEFAULT 'ACTIVE' CHECK (account_status IN ('ACTIVE', 'PENDING', 'SUSPENDED', 'DELETED')),
    initial_handicap INTEGER             NOT NULL,
    api_key_hash     BYTEA UNIQUE,
    created_at       TIMESTAMP           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at       TIMESTAMP           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted          BOOLEAN             NOT NULL DEFAULT FALSE,
    deleted_at       TIMESTAMP                    DEFAULT NULL
);