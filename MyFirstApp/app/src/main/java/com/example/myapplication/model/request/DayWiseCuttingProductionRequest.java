package com.example.myapplication.model.request;

public class DayWiseCuttingProductionRequest {

    private Long cuttingPlanId;
    private String date;
    private Integer actualCutPieces;
    private Integer rejectPieces;

    public Long getCuttingPlanId() {
        return cuttingPlanId;
    }

    public void setCuttingPlanId(Long cuttingPlanId) {
        this.cuttingPlanId = cuttingPlanId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getActualCutPieces() {
        return actualCutPieces;
    }

    public void setActualCutPieces(Integer actualCutPieces) {
        this.actualCutPieces = actualCutPieces;
    }

    public Integer getRejectPieces() {
        return rejectPieces;
    }

    public void setRejectPieces(Integer rejectPieces) {
        this.rejectPieces = rejectPieces;
    }
}
