CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL
)
ENGINE = InnoDB;

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
)
ENGINE = InnoDB;

CREATE TABLE user_roles(
    user_id INT NOT NULL,
    role_id INT NOT NULL,

    FOREIGN KEY (user_id) references users(id),
    FOREIGN KEY (role_id) references roles(id),

    unique (user_id,role_id)
)
ENGINE = InnoDB;

INSERT INTO users VALUES (1, 'Sanya','12345678');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2,'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1,2);