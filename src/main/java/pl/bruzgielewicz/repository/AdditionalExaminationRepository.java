package pl.bruzgielewicz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bruzgielewicz.entity.AdditionalExamination;

import java.util.List;

public interface AdditionalExaminationRepository extends JpaRepository<AdditionalExamination,Long> {
    List<AdditionalExamination> findAdditionalExaminationByPatientId(Long id);
}
