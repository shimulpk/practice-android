package com.example.myapplication.model.response;

public class DayWiseCuttingHistoryResponse {

    private Long cuttingPlanId;

    private String cuttingPlanCode;

    private String styleNo;

    private String date;

    private Long totalCutPieces;

    private Long totalRejectPieces;

    private Long totalEntries;

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

    public String getStyleNo() {
        return styleNo;
    }

    public void setStyleNo(String styleNo) {
        this.styleNo = styleNo;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Long getTotalCutPieces() {
        return totalCutPieces;
    }

    public void setTotalCutPieces(Long totalCutPieces) {
        this.totalCutPieces = totalCutPieces;
    }

    public Long getTotalRejectPieces() {
        return totalRejectPieces;
    }

    public void setTotalRejectPieces(Long totalRejectPieces) {
        this.totalRejectPieces = totalRejectPieces;
    }

    public Long getTotalEntries() {
        return totalEntries;
    }

    public void setTotalEntries(Long totalEntries) {
        this.totalEntries = totalEntries;
    }
}
