package pl.bruzgielewicz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bruzgielewicz.entity.PhysicalExamination;

public interface PhysicalExaminationRepository extends JpaRepository<PhysicalExamination,Long> {
}
