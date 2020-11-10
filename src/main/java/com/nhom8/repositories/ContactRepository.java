package com.nhom8.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nhom8.entities.Contact;
@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer> {

}
