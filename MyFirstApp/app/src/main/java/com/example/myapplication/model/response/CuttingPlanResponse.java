package com.example.myapplication.model.response;

public class CuttingPlanResponse {

    private Long id;
    private String cuttingPlanId;
    private String poNumber;
    private String buyerName;
    private String styleNo;
    private Integer plannedPieces;

    private String status;

    private Integer actualCutPieces;

    private Integer rejectedPieces;

    private Integer remainingPieces;

    private Double progress;

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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getActualCutPieces() {
        return actualCutPieces;
    }

    public void setActualCutPieces(Integer actualCutPieces) {
        this.actualCutPieces = actualCutPieces;
    }

    public Integer getRejectedPieces() {
        return rejectedPieces;
    }

    public void setRejectedPieces(Integer rejectedPieces) {
        this.rejectedPieces = rejectedPieces;
    }

    public Integer getRemainingPieces() {
        return remainingPieces;
    }

    public void setRemainingPieces(Integer remainingPieces) {
        this.remainingPieces = remainingPieces;
    }

    public Double getProgress() {
        return progress;
    }

    public void setProgress(Double progress) {
        this.progress = progress;
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
