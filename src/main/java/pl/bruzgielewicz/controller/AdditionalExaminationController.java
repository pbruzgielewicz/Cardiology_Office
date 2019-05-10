package pl.bruzgielewicz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.bruzgielewicz.entity.AdditionalExamination;
import pl.bruzgielewicz.entity.Patient;
import pl.bruzgielewicz.repository.AdditionalExaminationRepository;
import pl.bruzgielewicz.repository.PatientRepository;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


@Controller
public class AdditionalExaminationController {

    @Autowired
    AdditionalExaminationRepository additionalExaminationRepository;
    @Autowired
    PatientRepository patientRepository;


    @GetMapping("/addAdditional/{id}")
    public String addAdditionalExamination(@PathVariable Long id, Model model) {
        AdditionalExamination additionalExamination = new AdditionalExamination();
        model.addAttribute("additionalExamination", additionalExamination);
        return "additionalExamination/addAdditional";

    }

    @PostMapping("/addAdditional/{id}")
    public String addAdditionalExamination(@ModelAttribute(name = "additionalExamination") AdditionalExamination additionalExamination, @PathVariable Long id) {
        Patient patient = patientRepository.findById(id);
        additionalExamination.setPatient(patient);
        additionalExamination.setCreated(LocalDate.now());
        additionalExamination.setId(null);
        additionalExaminationRepository.save(additionalExamination);
        return "redirect: /home";
    }

    @GetMapping("/showAdditional/{id}")
    public String showAdditionalExamination(@PathVariable Long id, Model model){
        List<AdditionalExamination> listOfExaminations = additionalExaminationRepository.findAdditionalExaminationByPatientId(id);
        model.addAttribute("listOfAdditionalExaminations", listOfExaminations);
        return "additionalExamination/show";
    }

    @GetMapping("/details/{id}")
    public String showAdditionalExDetails(@PathVariable Long id, Model model){
        model.addAttribute("details", additionalExaminationRepository.findOne(id));
        return "additionalExamination/details";
    }

    @ModelAttribute("types")
    public List<String> examinationTypes(){
        List<String> examinationTypes = new ArrayList<>();
        examinationTypes.add("Ekg");
        examinationTypes.add("Ukg");
        examinationTypes.add("Exercise Test");
        return examinationTypes;

    }
}
