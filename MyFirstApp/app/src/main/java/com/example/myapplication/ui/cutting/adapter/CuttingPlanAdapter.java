package com.example.myapplication.ui.cutting.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.myapplication.databinding.ItemCuttingPlanBinding;
import com.example.myapplication.model.response.CuttingPlanResponse;

import java.util.ArrayList;
import java.util.List;

public class CuttingPlanAdapter extends RecyclerView.Adapter<CuttingPlanAdapter.ViewHolder> {

    private final List<CuttingPlanResponse> list = new ArrayList<>();

    public void setData(List<CuttingPlanResponse> data) {
        list.clear();
        list.addAll(data);
        notifyDataSetChanged();
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        ItemCuttingPlanBinding binding = ItemCuttingPlanBinding.inflate(
                LayoutInflater.from(parent.getContext()),
                parent,
                false
        );

        return new ViewHolder(binding);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {

        CuttingPlanResponse item = list.get(position);

        holder.binding.tvPlanId.setText("Plan : " + item.getCuttingPlanId());

        holder.binding.tvStyle.setText("Style : " + item.getStyleNo());

        holder.binding.tvBuyer.setText("Buyer : " + item.getBuyerName());

        holder.binding.tvPlanned.setText("Planned : " + item.getPlannedPieces());

        holder.binding.tvCut.setText("Cut : " + item.getActualCutPieces());

        holder.binding.tvRemaining.setText("Remaining : " + item.getRemainingPieces());

        holder.binding.tvStatus.setText("Status : " + item.getStatus());

    }

    @Override
    public int getItemCount() {
        return list.size();
    }

    static class ViewHolder extends RecyclerView.ViewHolder {

        ItemCuttingPlanBinding binding;

        public ViewHolder(ItemCuttingPlanBinding binding) {
            super(binding.getRoot());
            this.binding = binding;
        }
    }
}