package pl.bruzgielewicz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.bruzgielewicz.entity.Patient;
import pl.bruzgielewicz.entity.PhysicalExamination;
import pl.bruzgielewicz.repository.PatientRepository;
import pl.bruzgielewicz.repository.PhysicalExaminationRepository;

import java.time.LocalDate;
import java.util.List;

@Controller
public class PhysicalExaminationController {

    @Autowired
    PhysicalExaminationRepository physicalExaminationRepository;
    @Autowired
    PatientRepository patientRepository;

    @GetMapping("/addPhysical/{id}")
    public String addPhysicalExamination(@PathVariable Long id, Model model){
        PhysicalExamination examination = new PhysicalExamination();
        model.addAttribute("physicalExamination", examination);
        return "physicalExamination/addPhysical";

    }

    @PostMapping("/addPhysical/{id}")
    public String addPhysicalExamination(@ModelAttribute PhysicalExamination physicalExamination, @PathVariable Long id){
        physicalExamination.setPatient(patientRepository.findById(id));
        physicalExamination.setCreated(LocalDate.now());
        physicalExamination.setId(null);
        physicalExaminationRepository.save(physicalExamination);

        return "redirect: /home";
    }

    @GetMapping("/showPhysical/{id}")
    public String showPhysicalExaminations(@PathVariable Long id, Model model){
        List<PhysicalExamination> listOfPhysicalExaminations = physicalExaminationRepository.findPhysicalExaminationByPatientId(id);
        model.addAttribute("listOfPhysicalExaminations", listOfPhysicalExaminations );
        return "physicalExamination/show";
    }

    @GetMapping("/showDetails/{id}")
    public String showPhysicalExaminationDetails(@PathVariable Long id, Model model){
        model.addAttribute("details",physicalExaminationRepository.findById(id));
        return "physicalExamination/details";
    }
}
