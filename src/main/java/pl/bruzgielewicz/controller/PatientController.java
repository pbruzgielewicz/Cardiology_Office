package pl.bruzgielewicz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
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
    public String addPatient(@ModelAttribute(name = "patient") @Validated Patient patient, BindingResult result) {
        if (result.hasErrors()) {
            return "patient/add";
        } else {
            patientRepository.save(patient);
            return "redirect:/home";
        }
    }

    @GetMapping("edit/{id}")
    public String editPatient(@PathVariable Long id, Model model) {
        model.addAttribute("editedPatient", patientRepository.findById(id));
        return "patient/edit";
    }

    @PostMapping("/edit/{id}")
    public String editPatient(@PathVariable Long id, @ModelAttribute(name = "editedPatient") @Validated Patient patient, BindingResult result) {
        if (result.hasErrors()) {
            return "patient/edit";
        } else {
            patientRepository.save(patient);
            return "redirect: /home";
        }

    }

    @GetMapping("/show/{id}")
    public String showDetails(@PathVariable Long id, Model model) {
        model.addAttribute("patient", patientRepository.findById(id));
        return "patient/show";
    }

    @GetMapping("/find")
    public String findPatient() {
        return "patient/find";
    }

    @PostMapping("/find")
    public String findPatient(Model model, @RequestParam String lastName) {
        List<Patient> patients = patientRepository.findByLastNameAllIgnoreCase(lastName);
        model.addAttribute("patients", patients);
        return "/patient/find";

    }

}
