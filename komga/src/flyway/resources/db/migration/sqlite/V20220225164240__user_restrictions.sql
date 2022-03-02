CREATE TABLE USER_SHARING
(
    LABEL   varchar NOT NULL,
    ALLOW   boolean NOT NULL,
    USER_ID varchar NOT NULL,
    PRIMARY KEY (LABEL, ALLOW, USER_ID),
    FOREIGN KEY (USER_ID) REFERENCES USER (ID)
);

ALTER TABLE USER
    add column AGE_RESTRICTION integer NULL;
ALTER TABLE USER
    add column AGE_RESTRICTION_ALLOW_ONLY boolean NULL;
