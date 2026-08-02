package com.example.myapplication.model.response;

public class DayWiseCuttingProductionResponse {

    private Long id;
    private Long cuttingPlanId;
    private String cuttingPlanCode;
    private String date;
    private Integer actualCutPieces;
    private Integer rejectPieces;
    private String styleNo;
    private String cuttingMaster;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCuttingPlanId() {
        return cuttingPlanId;
    }

    public void setCuttingPlanId(Long cuttingPlanId) {
        this.cuttingPlanId = cuttingPlanId;
    }

    public String getCuttingPlanCode() {
        return cuttingPlanCode;
    }

    public void setCuttingPlanCode(String cuttingPlanCode) {
        this.cuttingPlanCode = cuttingPlanCode;
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

    public String getStyleNo() {
        return styleNo;
    }

    public void setStyleNo(String styleNo) {
        this.styleNo = styleNo;
    }

    public String getCuttingMaster() {
        return cuttingMaster;
    }

    public void setCuttingMaster(String cuttingMaster) {
        this.cuttingMaster = cuttingMaster;
    }
}
