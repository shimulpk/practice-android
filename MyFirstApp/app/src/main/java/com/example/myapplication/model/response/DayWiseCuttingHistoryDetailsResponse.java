package com.example.myapplication.model.response;

public class DayWiseCuttingHistoryDetailsResponse {

    private Long id;

    private String createdAt;

    private Integer actualCutPieces;

    private Integer rejectPieces;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
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
