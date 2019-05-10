package pl.bruzgielewicz.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.bruzgielewicz.entity.Patient;
import pl.bruzgielewicz.repository.PatientRepository;


import java.util.List;


@Controller
public class HomeController {


    @Autowired
    PatientRepository patientRepository;

    @GetMapping("/")
    public String login(){
        return "login";
    }

    @GetMapping("/home")
    public String homePage(Model model){
        List<Patient> listOfAllPatients = patientRepository.findAll();
        model.addAttribute("listOfPatients", listOfAllPatients);
        return "home";
    }

}
