package com.example.myapplication.ui.cutting.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.myapplication.databinding.ItemCuttingHistoryBinding;
import com.example.myapplication.model.response.DayWiseCuttingHistoryResponse;

import java.util.ArrayList;
import java.util.List;

public class CuttingHistoryAdapter extends RecyclerView.Adapter<CuttingHistoryAdapter.ViewHolder> {

    private final List<DayWiseCuttingHistoryResponse> historyList = new ArrayList<>();

    public interface OnItemClickListener {

        void onItemClick(DayWiseCuttingHistoryResponse item);

    }

    private OnItemClickListener listener;

    public void setOnItemClickListener(OnItemClickListener listener) {

        this.listener = listener;

    }

    public void setData(List<DayWiseCuttingHistoryResponse> list) {

        historyList.clear();

        if (list != null) {
            historyList.addAll(list);
        }

        notifyDataSetChanged();
    }


    @NonNull
    @Override
    public CuttingHistoryAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        ItemCuttingHistoryBinding binding =
                ItemCuttingHistoryBinding.inflate(
                        LayoutInflater.from(parent.getContext()),
                        parent,
                        false);

        return new ViewHolder(binding);
    }

    @Override
    public void onBindViewHolder(@NonNull CuttingHistoryAdapter.ViewHolder holder, int position) {
        DayWiseCuttingHistoryResponse item =
                historyList.get(position);

        holder.binding.tvPlanCode.setText(
                item.getCuttingPlanCode());

        holder.binding.tvStyle.setText(
                "Style : " + item.getStyleNo());

        holder.binding.tvDate.setText(
                item.getDate());

        holder.binding.tvTotalCut.setText(
                String.valueOf(item.getTotalCutPieces()));

        holder.binding.tvReject.setText(
                String.valueOf(item.getTotalRejectPieces()));

        holder.binding.tvEntries.setText(
                String.valueOf(item.getTotalEntries()));

        holder.itemView.setOnClickListener(v -> {

            if (listener != null) {

                listener.onItemClick(item);

            }

        });

    }

    @Override
    public int getItemCount() {
        return historyList.size();
    }

    static class ViewHolder extends RecyclerView.ViewHolder {

        ItemCuttingHistoryBinding binding;

        public ViewHolder(
                ItemCuttingHistoryBinding binding) {

            super(binding.getRoot());

            this.binding = binding;

        }
    }



}
