package app.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name ="agreement_tarif")
public class AgreementTarif implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	@ManyToOne()
	@JoinColumn(name = "agreement_id")
	private Agreement agreement;

	@Column(name = "configuring")
	private Double configuring;

	@Column(name = "programming")
	private Double programming;

	@Column(name = "architecting")
	private Double architecting;

	@Column(name = "date_start")
	private Date dateStart;

	public AgreementTarif() {
	}

	public AgreementTarif(Agreement agreement, double configuring, double programming, double architecting,
			Date datestart) {
		super();
		this.agreement = agreement;
		this.configuring = configuring;
		this.programming = programming;
		this.architecting = architecting;
		this.dateStart = datestart;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Agreement getAgreement() {
		return agreement;
	}

	public void setAgreement(Agreement agreement) {
		this.agreement = agreement;
	}

	public double getConfiguring() {
		return configuring;
	}

	public void setConfiguring(double configuring) {
		this.configuring = configuring;
	}

	public double getProgramming() {
		return programming;
	}

	public void setProgramming(double programming) {
		this.programming = programming;
	}

	public double getArchitecting() {
		return architecting;
	}

	public void setArchitecting(double architecting) {
		this.architecting = architecting;
	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

}