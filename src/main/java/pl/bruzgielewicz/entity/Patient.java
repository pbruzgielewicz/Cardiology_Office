package pl.bruzgielewicz.entity;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.pl.PESEL;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "patients")
public class Patient {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String firstName;
    @NotEmpty
    private String lastName;
    @PESEL
    private String pesel;
    private String adress;
    private String presentAilments;
    private String previousDiseases;
    private String currentMedicines;
    private String dateOfBirth;

    @OneToMany(mappedBy = "patient", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<PhysicalExamination> physicalExaminations = new ArrayList<>();

    @OneToMany(mappedBy = "patient")
    private List<AdditionalExamination> additionalExaminations = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPesel() {
        return pesel;
    }

    public void setPesel(String pesel) {
        this.pesel = pesel;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getPresentAilments() {
        return presentAilments;
    }

    public void setPresentAilments(String presentAilments) {
        this.presentAilments = presentAilments;
    }

    public String getPreviousDiseases() {
        return previousDiseases;
    }

    public void setPreviousDiseases(String previousDiseases) {
        this.previousDiseases = previousDiseases;
    }

    public String getCurrentMedicines() {
        return currentMedicines;
    }

    public void setCurrentMedicines(String currentMedicines) {
        this.currentMedicines = currentMedicines;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public List<PhysicalExamination> getPhysicalExaminations() {
        return physicalExaminations;
    }

    public void setPhysicalExamination(List<PhysicalExamination> physicalExaminations) {
        this.physicalExaminations = physicalExaminations;
    }

    public List<AdditionalExamination> getAdditionalExaminations() {
        return additionalExaminations;
    }

    public void setAdditionalExamination(List<AdditionalExamination> additionalExaminations) {
        this.additionalExaminations = additionalExaminations;
    }
}
