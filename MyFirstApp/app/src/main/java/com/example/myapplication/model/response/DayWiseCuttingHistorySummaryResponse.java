package com.example.myapplication.model.response;

public class DayWiseCuttingHistorySummaryResponse {

    private Integer totalCutPieces;

    private Integer totalRejectPieces;

    private Long totalEntries;

    private String lastUpdated;

    public Integer getTotalCutPieces() {
        return totalCutPieces;
    }

    public void setTotalCutPieces(Integer totalCutPieces) {
        this.totalCutPieces = totalCutPieces;
    }

    public Integer getTotalRejectPieces() {
        return totalRejectPieces;
    }

    public void setTotalRejectPieces(Integer totalRejectPieces) {
        this.totalRejectPieces = totalRejectPieces;
    }

    public Long getTotalEntries() {
        return totalEntries;
    }

    public void setTotalEntries(Long totalEntries) {
        this.totalEntries = totalEntries;
    }

    public String getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(String lastUpdated) {
        this.lastUpdated = lastUpdated;
    }
}
