package pl.bruzgielewicz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bruzgielewicz.entity.PhysicalExamination;

import java.util.List;

public interface PhysicalExaminationRepository extends JpaRepository<PhysicalExamination,Long> {
    List<PhysicalExamination> findPhysicalExaminationByPatientId(Long id);
    PhysicalExamination findById(Long id);
}
