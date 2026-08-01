package com.example.myapplication.model.response;

public class CuttingPlanResponse {

    private Long id;
    private String cuttingPlanId;
    private String poNumber;
    private String buyerName;
    private String styleNo;
    private Integer plannedPieces;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCuttingPlanId() {
        return cuttingPlanId;
    }

    public void setCuttingPlanId(String cuttingPlanId) {
        this.cuttingPlanId = cuttingPlanId;
    }

    public String getPoNumber() {
        return poNumber;
    }

    public void setPoNumber(String poNumber) {
        this.poNumber = poNumber;
    }

    public String getBuyerName() {
        return buyerName;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName;
    }

    public String getStyleNo() {
        return styleNo;
    }

    public void setStyleNo(String styleNo) {
        this.styleNo = styleNo;
    }

    public Integer getPlannedPieces() {
        return plannedPieces;
    }

    public void setPlannedPieces(Integer plannedPieces) {
        this.plannedPieces = plannedPieces;
    }

    @Override
    public String toString() {
        return cuttingPlanId
                + " | "
                + poNumber
                + " | "
                + styleNo;
    }
}
