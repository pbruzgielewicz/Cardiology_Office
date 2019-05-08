package pl.bruzgielewicz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.bruzgielewicz.entity.Patient;
import pl.bruzgielewicz.repository.PatientRepository;



import java.util.List;


@Controller
public class PatientController {

    @Autowired
    PatientRepository patientRepository;


    @GetMapping("/patients")
    public String addPatient(Model model) {
        model.addAttribute("patient", new Patient());
        return "patient/add";
    }

    @PostMapping("patients/add")
    public String addPatient(@ModelAttribute("patient") Patient patient ) {

        patientRepository.save(patient);
        return "redirect:/home";
    }

    @GetMapping("edit/{id}")
    public String editPatient(@PathVariable Long id, Model model ){
        model.addAttribute("editedPatient", patientRepository.findById(id));
        return "patient/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPatient(@ModelAttribute("editedPatient")Patient patient) {
        patientRepository.save(patient);
        return "redirect: /home";

    }

    @GetMapping("/show/{id}")
    public String showDetails(@PathVariable Long id, Model model){
        model.addAttribute("patient", patientRepository.findById(id));
        return "patient/show";
    }

    @GetMapping("/find")
    public String findPatient(){
        return "patient/find";
    }

    @PostMapping("/find")
    public String findPatient(Model model, @RequestParam String lastName){
        List<Patient> patients = patientRepository.findByLastNameAllIgnoreCase(lastName);
        model.addAttribute("patients", patients);
        return "/patient/find";

    }

}
