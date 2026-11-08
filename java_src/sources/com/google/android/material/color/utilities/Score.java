package com.google.android.material.color.utilities;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Score {
    private static final double CUTOFF_CHROMA = 15.0d;
    private static final double CUTOFF_EXCITED_PROPORTION = 0.01d;
    private static final double CUTOFF_TONE = 10.0d;
    private static final double TARGET_CHROMA = 48.0d;
    private static final double WEIGHT_CHROMA_ABOVE = 0.3d;
    private static final double WEIGHT_CHROMA_BELOW = 0.1d;
    private static final double WEIGHT_PROPORTION = 0.7d;

    private Score() {
    }

    public static List<Integer> score(Map<Integer, Integer> colorsToPopulation) {
        double populationSum = 0.0d;
        Iterator<Map.Entry<Integer, Integer>> it = colorsToPopulation.entrySet().iterator();
        while (it.hasNext()) {
            populationSum += (double) it.next().getValue().intValue();
        }
        Map<Integer, Cam16> colorsToCam = new HashMap<>();
        double[] hueProportions = new double[361];
        for (Map.Entry<Integer, Integer> entry : colorsToPopulation.entrySet()) {
            int color = entry.getKey().intValue();
            double population = entry.getValue().intValue();
            double proportion = population / populationSum;
            Cam16 cam = Cam16.fromInt(color);
            colorsToCam.put(Integer.valueOf(color), cam);
            int hue = (int) Math.round(cam.getHue());
            hueProportions[hue] = hueProportions[hue] + proportion;
        }
        Map<Integer, Double> colorsToExcitedProportion = new HashMap<>();
        for (Map.Entry<Integer, Cam16> entry2 : colorsToCam.entrySet()) {
            int color2 = entry2.getKey().intValue();
            Cam16 cam2 = entry2.getValue();
            int hue2 = (int) Math.round(cam2.getHue());
            double excitedProportion = 0.0d;
            for (int j = hue2 - 15; j < hue2 + 15; j++) {
                int neighborHue = MathUtils.sanitizeDegreesInt(j);
                excitedProportion += hueProportions[neighborHue];
            }
            colorsToExcitedProportion.put(Integer.valueOf(color2), Double.valueOf(excitedProportion));
        }
        Map<Integer, Double> colorsToScore = new HashMap<>();
        for (Map.Entry<Integer, Cam16> entry3 : colorsToCam.entrySet()) {
            int color3 = entry3.getKey().intValue();
            Cam16 cam3 = entry3.getValue();
            double proportion2 = colorsToExcitedProportion.get(Integer.valueOf(color3)).doubleValue();
            double proportionScore = 100.0d * proportion2 * WEIGHT_PROPORTION;
            double chromaWeight = cam3.getChroma() < TARGET_CHROMA ? WEIGHT_CHROMA_BELOW : WEIGHT_CHROMA_ABOVE;
            double chromaScore = (cam3.getChroma() - TARGET_CHROMA) * chromaWeight;
            double score = proportionScore + chromaScore;
            colorsToScore.put(Integer.valueOf(color3), Double.valueOf(score));
            populationSum = populationSum;
        }
        List<Integer> filteredColors = filter(colorsToExcitedProportion, colorsToCam);
        Map<Integer, Double> filteredColorsToScore = new HashMap<>();
        Iterator<Integer> it2 = filteredColors.iterator();
        while (it2.hasNext()) {
            int color4 = it2.next().intValue();
            filteredColorsToScore.put(Integer.valueOf(color4), colorsToScore.get(Integer.valueOf(color4)));
        }
        List<Map.Entry<Integer, Double>> entryList = new ArrayList<>(filteredColorsToScore.entrySet());
        Collections.sort(entryList, new ScoredComparator());
        List<Integer> colorsByScoreDescending = new ArrayList<>();
        for (Map.Entry<Integer, Double> entry4 : entryList) {
            Cam16 cam4 = colorsToCam.get(Integer.valueOf(entry4.getKey().intValue()));
            boolean duplicateHue = false;
            Iterator<Integer> it3 = colorsByScoreDescending.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    filteredColors = filteredColors;
                    filteredColorsToScore = filteredColorsToScore;
                    colorsToCam = colorsToCam;
                    hueProportions = hueProportions;
                    break;
                }
                Integer alreadyChosenColor = it3.next();
                Cam16 alreadyChosenCam = colorsToCam.get(alreadyChosenColor);
                filteredColors = filteredColors;
                filteredColorsToScore = filteredColorsToScore;
                colorsToCam = colorsToCam;
                hueProportions = hueProportions;
                if (MathUtils.differenceDegrees(cam4.getHue(), alreadyChosenCam.getHue()) < CUTOFF_CHROMA) {
                    duplicateHue = true;
                    break;
                }
                filteredColors = filteredColors;
                filteredColorsToScore = filteredColorsToScore;
                colorsToCam = colorsToCam;
                hueProportions = hueProportions;
            }
            if (!duplicateHue) {
                colorsByScoreDescending.add(entry4.getKey());
            }
        }
        if (colorsByScoreDescending.isEmpty()) {
            colorsByScoreDescending.add(-12417548);
        }
        return colorsByScoreDescending;
    }

    private static List<Integer> filter(Map<Integer, Double> colorsToExcitedProportion, Map<Integer, Cam16> colorsToCam) {
        List<Integer> filtered = new ArrayList<>();
        for (Map.Entry<Integer, Cam16> entry : colorsToCam.entrySet()) {
            int color = entry.getKey().intValue();
            Cam16 cam = entry.getValue();
            double proportion = colorsToExcitedProportion.get(Integer.valueOf(color)).doubleValue();
            if (cam.getChroma() >= CUTOFF_CHROMA && ColorUtils.lstarFromArgb(color) >= CUTOFF_TONE && proportion >= CUTOFF_EXCITED_PROPORTION) {
                filtered.add(Integer.valueOf(color));
            }
        }
        return filtered;
    }

    static class ScoredComparator implements Comparator<Map.Entry<Integer, Double>> {
        @Override // java.util.Comparator
        public int compare(Map.Entry<Integer, Double> entry1, Map.Entry<Integer, Double> entry2) {
            return -entry1.getValue().compareTo(entry2.getValue());
        }
    }
}
