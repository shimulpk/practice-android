package com.example.myapplication.model.response;

public class CuttingDashboardResponse {

    private Long todayCutting;
    private Long todayReject;
    private Long totalPlans;
    private Long pendingPlans;
    private Long completedPlans;

    public Long getTodayCutting() {
        return todayCutting;
    }

    public void setTodayCutting(Long todayCutting) {
        this.todayCutting = todayCutting;
    }

    public Long getTodayReject() {
        return todayReject;
    }

    public void setTodayReject(Long todayReject) {
        this.todayReject = todayReject;
    }

    public Long getTotalPlans() {
        return totalPlans;
    }

    public void setTotalPlans(Long totalPlans) {
        this.totalPlans = totalPlans;
    }

    public Long getPendingPlans() {
        return pendingPlans;
    }

    public void setPendingPlans(Long pendingPlans) {
        this.pendingPlans = pendingPlans;
    }

    public Long getCompletedPlans() {
        return completedPlans;
    }

    public void setCompletedPlans(Long completedPlans) {
        this.completedPlans = completedPlans;
    }
}
