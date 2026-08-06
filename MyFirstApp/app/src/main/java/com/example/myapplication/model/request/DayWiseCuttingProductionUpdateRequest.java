package com.example.myapplication.model.request;

public class DayWiseCuttingProductionUpdateRequest {

    private Integer actualCutPieces;

    private Integer rejectPieces;

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
