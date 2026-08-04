package com.example.myapplication.ui.cutting.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.myapplication.databinding.ItemCuttingHistoryDetailsBinding;
import com.example.myapplication.model.response.DayWiseCuttingHistoryDetailsResponse;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class CuttingHistoryDetailsAdapter
        extends RecyclerView.Adapter<CuttingHistoryDetailsAdapter.ViewHolder> {

    private final List<DayWiseCuttingHistoryDetailsResponse> detailsList =
            new ArrayList<>();

    public void setData(List<DayWiseCuttingHistoryDetailsResponse> list) {

        detailsList.clear();

        if (list != null) {
            detailsList.addAll(list);
        }

        notifyDataSetChanged();
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(
            @NonNull ViewGroup parent,
            int viewType) {

        ItemCuttingHistoryDetailsBinding binding =
                ItemCuttingHistoryDetailsBinding.inflate(
                        LayoutInflater.from(parent.getContext()),
                        parent,
                        false);

        return new ViewHolder(binding);
    }

    @Override
    public void onBindViewHolder(
            @NonNull ViewHolder holder,
            int position) {

        DayWiseCuttingHistoryDetailsResponse item =
                detailsList.get(position);

        holder.binding.tvCut.setText(
                "Cut Pieces : " + item.getActualCutPieces());

        holder.binding.tvReject.setText(
                "Reject Pieces : " + item.getRejectPieces());

        holder.binding.tvTime.setText(
                formatTime(item.getCreatedAt()));
    }

    @Override
    public int getItemCount() {
        return detailsList.size();
    }

    private String formatTime(String createdAt) {

        try {

            SimpleDateFormat input =
                    new SimpleDateFormat(
                            "yyyy-MM-dd'T'HH:mm:ss",
                            Locale.ENGLISH);

            SimpleDateFormat output =
                    new SimpleDateFormat(
                            "hh:mm a",
                            Locale.ENGLISH);

            Date date = input.parse(createdAt);

            return output.format(date);

        } catch (Exception e) {

            return createdAt;
        }
    }

    static class ViewHolder extends RecyclerView.ViewHolder {

        ItemCuttingHistoryDetailsBinding binding;

        public ViewHolder(
                ItemCuttingHistoryDetailsBinding binding) {

            super(binding.getRoot());

            this.binding = binding;
        }
    }
}