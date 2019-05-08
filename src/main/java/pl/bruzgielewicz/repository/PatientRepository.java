package pl.bruzgielewicz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bruzgielewicz.entity.Patient;

import java.util.List;

public interface PatientRepository extends JpaRepository<Patient, Long> {

    List<Patient> findByLastNameAllIgnoreCase(String lastName);
    Patient findById(Long id);
}
