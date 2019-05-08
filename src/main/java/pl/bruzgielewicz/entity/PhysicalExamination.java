package pl.bruzgielewicz.entity;


import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "physicalExaminations")
public class PhysicalExamination {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDate created;
    private String weight;
    private String growth;
    private String skin;
    private String lymphNodes;
    private String neck;
    private String head;
    private String eyes;
    private String chest;
    private String abdominalCavity;
    private String limbs;
    private String pulse;
    private String pressure;

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getCreated() {
        return created;
    }

    public void setCreated(LocalDate created) {
        this.created = created;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getGrowth() {
        return growth;
    }

    public void setGrowth(String growth) {
        this.growth = growth;
    }

    public String getSkin() {
        return skin;
    }

    public void setSkin(String skin) {
        this.skin = skin;
    }

    public String getLymphNodes() {
        return lymphNodes;
    }

    public void setLymphNodes(String lymphNodes) {
        this.lymphNodes = lymphNodes;
    }

    public String getNeck() {
        return neck;
    }

    public void setNeck(String neck) {
        this.neck = neck;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getEyes() {
        return eyes;
    }

    public void setEyes(String eyes) {
        this.eyes = eyes;
    }

    public String getChest() {
        return chest;
    }

    public void setChest(String chest) {
        this.chest = chest;
    }

    public String getAbdominalCavity() {
        return abdominalCavity;
    }

    public void setAbdominalCavity(String abdominalCavity) {
        this.abdominalCavity = abdominalCavity;
    }

    public String getLimbs() {
        return limbs;
    }

    public void setLimbs(String limbs) {
        this.limbs = limbs;
    }

    public String getPulse() {
        return pulse;
    }

    public void setPulse(String pulse) {
        this.pulse = pulse;
    }

    public String getPressure() {
        return pressure;
    }

    public void setPressure(String pressure) {
        this.pressure = pressure;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }
}
