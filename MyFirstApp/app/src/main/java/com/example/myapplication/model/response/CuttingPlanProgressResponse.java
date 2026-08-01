package com.example.myapplication.model.response;

public class CuttingPlanProgressResponse {

    private Integer target;
    private Integer cutSoFar;

    private Integer remaining;
    private Double progress;
    private Integer rejected;
    private String status;

    public Integer getTarget() {
        return target;
    }

    public void setTarget(Integer target) {
        this.target = target;
    }

    public Integer getCutSoFar() {
        return cutSoFar;
    }

    public void setCutSoFar(Integer cutSoFar) {
        this.cutSoFar = cutSoFar;
    }

    public Integer getRemaining() {
        return remaining;
    }

    public void setRemaining(Integer remaining) {
        this.remaining = remaining;
    }

    public Double getProgress() {
        return progress;
    }

    public void setProgress(Double progress) {
        this.progress = progress;
    }

    public Integer getRejected() {
        return rejected;
    }

    public void setRejected(Integer rejected) {
        this.rejected = rejected;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


}
