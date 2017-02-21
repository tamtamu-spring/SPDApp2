package app.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class Payment extends UrlEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	@ManyToOne
	@JoinColumn(name = "spd_id")
	private SPD spd;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
	@JoinColumn(name = "payment_type_id")
	private PaymentType paymentType;

	@Column(name = "value")
	private Double value;

	@Column(name = "date_start")
	private Date dateStart;

	@Column(name = "date_finish")
	private Date dateFinish;

	public Payment() {
	}

	public Payment(SPD spd, PaymentType paymentType, Double value, Date dateStart, Date dateFinish) {
		super();
		this.spd = spd;
		this.paymentType = paymentType;
		this.value = value;
		this.dateStart = dateStart;
		this.dateFinish = dateFinish;
	}

	public SPD getSpd() {
		return spd;
	}

	public void setSpdId(SPD spd) {
		this.spd = spd;
	}

	public PaymentType getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(PaymentType paymentType) {
		this.paymentType = paymentType;
	}

	public void setSpd(SPD spd) {
		this.spd = spd;
	}

	public Double getValue() {
		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

	public Date getDateFinish() {
		return dateFinish;
	}

	public void setDateFinish(Date dateFinish) {
		this.dateFinish = dateFinish;
	}

}
