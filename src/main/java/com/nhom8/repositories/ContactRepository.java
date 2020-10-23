package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nhom8.entities.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer> {

}
