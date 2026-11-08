package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes.dex */
public final class MultiBrowseCarouselStrategy extends CarouselStrategy {
    private static final float MEDIUM_ITEM_FLEX_PERCENTAGE = 0.1f;
    private final boolean forceCompactArrangement;
    private static final int[] SMALL_COUNTS = {1};
    private static final int[] MEDIUM_COUNTS = {1, 0};
    private static final int[] MEDIUM_COUNTS_COMPACT = {0};

    public MultiBrowseCarouselStrategy() {
        this(false);
    }

    public MultiBrowseCarouselStrategy(boolean forceCompactArrangement) {
        this.forceCompactArrangement = forceCompactArrangement;
    }

    private float getExtraSmallSize(Context context) {
        return context.getResources().getDimension(R.dimen.m3_carousel_gone_size);
    }

    private float getSmallSizeMin(Context context) {
        return context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
    }

    private float getSmallSizeMax(Context context) {
        return context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
    }

    @Override // com.google.android.material.carousel.CarouselStrategy
    KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View child) {
        float availableSpace = carousel.getContainerWidth();
        RecyclerView.LayoutParams childLayoutParams = (RecyclerView.LayoutParams) child.getLayoutParams();
        float childHorizontalMargins = childLayoutParams.leftMargin + childLayoutParams.rightMargin;
        float smallChildWidthMin = getSmallSizeMin(child.getContext()) + childHorizontalMargins;
        float smallChildWidthMax = getSmallSizeMax(child.getContext()) + childHorizontalMargins;
        float measuredChildWidth = child.getMeasuredWidth();
        float targetLargeChildWidth = Math.min(measuredChildWidth + childHorizontalMargins, availableSpace);
        float targetSmallChildWidth = MathUtils.clamp((measuredChildWidth / 3.0f) + childHorizontalMargins, getSmallSizeMin(child.getContext()) + childHorizontalMargins, getSmallSizeMax(child.getContext()) + childHorizontalMargins);
        float targetMediumChildWidth = (targetLargeChildWidth + targetSmallChildWidth) / 2.0f;
        int[] smallCounts = SMALL_COUNTS;
        int[] mediumCounts = this.forceCompactArrangement ? MEDIUM_COUNTS_COMPACT : MEDIUM_COUNTS;
        float minAvailableLargeSpace = (availableSpace - (maxValue(mediumCounts) * targetMediumChildWidth)) - (maxValue(smallCounts) * smallChildWidthMax);
        int largeCountMin = (int) Math.max(1.0d, Math.floor(minAvailableLargeSpace / targetLargeChildWidth));
        int largeCountMax = (int) Math.ceil(availableSpace / targetLargeChildWidth);
        int[] largeCounts = new int[(largeCountMax - largeCountMin) + 1];
        for (int i = 0; i < largeCounts.length; i++) {
            largeCounts[i] = largeCountMax - i;
        }
        Arrangement arrangement = findLowestCostArrangement(availableSpace, targetSmallChildWidth, smallChildWidthMin, smallChildWidthMax, smallCounts, targetMediumChildWidth, mediumCounts, targetLargeChildWidth, largeCounts);
        float extraSmallChildWidth = getExtraSmallSize(child.getContext()) + childHorizontalMargins;
        float extraSmallHeadCenterX = 0.0f - (extraSmallChildWidth / 2.0f);
        float largeStartCenterX = 0.0f + (arrangement.largeSize / 2.0f);
        float largeEndCenterX = largeStartCenterX + (Math.max(0, arrangement.largeCount - 1) * arrangement.largeSize);
        float start = (arrangement.largeSize / 2.0f) + largeEndCenterX;
        float mediumCenterX = arrangement.mediumCount > 0 ? (arrangement.mediumSize / 2.0f) + start : largeEndCenterX;
        float smallStartCenterX = arrangement.smallCount > 0 ? (arrangement.mediumCount > 0 ? (arrangement.mediumSize / 2.0f) + mediumCenterX : start) + (arrangement.smallSize / 2.0f) : mediumCenterX;
        float extraSmallTailCenterX = carousel.getContainerWidth() + (extraSmallChildWidth / 2.0f);
        float smallChildWidthMin2 = arrangement.largeSize;
        float extraSmallMask = getChildMaskPercentage(extraSmallChildWidth, smallChildWidthMin2, childHorizontalMargins);
        float smallMask = getChildMaskPercentage(arrangement.smallSize, arrangement.largeSize, childHorizontalMargins);
        float mediumMask = getChildMaskPercentage(arrangement.mediumSize, arrangement.largeSize, childHorizontalMargins);
        KeylineState.Builder builder = new KeylineState.Builder(arrangement.largeSize).addKeyline(extraSmallHeadCenterX, extraSmallMask, extraSmallChildWidth).addKeylineRange(largeStartCenterX, 0.0f, arrangement.largeSize, arrangement.largeCount, true);
        if (arrangement.mediumCount > 0) {
            builder.addKeyline(mediumCenterX, mediumMask, arrangement.mediumSize);
        }
        if (arrangement.smallCount > 0) {
            builder.addKeylineRange(smallStartCenterX, smallMask, arrangement.smallSize, arrangement.smallCount);
        }
        builder.addKeyline(extraSmallTailCenterX, extraSmallMask, extraSmallChildWidth);
        return builder.build();
    }

    private static Arrangement findLowestCostArrangement(float availableSpace, float targetSmallSize, float minSmallSize, float maxSmallSize, int[] smallCounts, float targetMediumSize, int[] mediumCounts, float targetLargeSize, int[] largeCounts) {
        Arrangement lowestCostArrangement = null;
        int priority = 1;
        for (int largeCount : largeCounts) {
            int priority2 = mediumCounts.length;
            int priority3 = 0;
            while (priority3 < priority2) {
                int mediumCount = mediumCounts[priority3];
                int length = smallCounts.length;
                int i = 0;
                while (i < length) {
                    int smallCount = smallCounts[i];
                    int i2 = priority2;
                    int i3 = priority3;
                    int priority4 = priority;
                    int i4 = length;
                    int i5 = i;
                    Arrangement arrangement = new Arrangement(priority4, targetSmallSize, minSmallSize, maxSmallSize, smallCount, targetMediumSize, mediumCount, targetLargeSize, largeCount, availableSpace);
                    if (lowestCostArrangement == null || arrangement.cost < lowestCostArrangement.cost) {
                        lowestCostArrangement = arrangement;
                        if (lowestCostArrangement.cost == 0.0f) {
                            return lowestCostArrangement;
                        }
                    }
                    int priority5 = priority4 + 1;
                    i = i5 + 1;
                    priority3 = i3;
                    priority = priority5;
                    priority2 = i2;
                    length = i4;
                }
                priority3++;
                priority = priority;
                priority2 = priority2;
            }
        }
        return lowestCostArrangement;
    }

    private static int maxValue(int[] array) {
        int largest = Integer.MIN_VALUE;
        for (int j : array) {
            if (j > largest) {
                largest = j;
            }
        }
        return largest;
    }

    static final class Arrangement {
        final float cost;
        final int largeCount;
        float largeSize;
        final int mediumCount;
        float mediumSize;
        final int priority;
        final int smallCount;
        float smallSize;

        Arrangement(int priority, float targetSmallSize, float minSmallSize, float maxSmallSize, int smallCount, float targetMediumSize, int mediumCount, float targetLargeSize, int largeCount, float availableSpace) {
            this.priority = priority;
            this.smallSize = MathUtils.clamp(targetSmallSize, minSmallSize, maxSmallSize);
            this.smallCount = smallCount;
            this.mediumSize = targetMediumSize;
            this.mediumCount = mediumCount;
            this.largeSize = targetLargeSize;
            this.largeCount = largeCount;
            fit(availableSpace, minSmallSize, maxSmallSize, targetLargeSize);
            this.cost = cost(targetLargeSize);
        }

        public String toString() {
            return "Arrangement [priority=" + this.priority + ", smallCount=" + this.smallCount + ", smallSize=" + this.smallSize + ", mediumCount=" + this.mediumCount + ", mediumSize=" + this.mediumSize + ", largeCount=" + this.largeCount + ", largeSize=" + this.largeSize + ", cost=" + this.cost + "]";
        }

        private float getSpace() {
            return (this.largeSize * this.largeCount) + (this.mediumSize * this.mediumCount) + (this.smallSize * this.smallCount);
        }

        private void fit(float availableSpace, float minSmallSize, float maxSmallSize, float targetLargeSize) {
            float delta = availableSpace - getSpace();
            if (this.smallCount > 0 && delta > 0.0f) {
                this.smallSize += Math.min(delta / this.smallCount, maxSmallSize - this.smallSize);
            } else if (this.smallCount > 0 && delta < 0.0f) {
                this.smallSize += Math.max(delta / this.smallCount, minSmallSize - this.smallSize);
            }
            this.largeSize = calculateLargeSize(availableSpace, this.smallCount, this.smallSize, this.mediumCount, this.largeCount);
            this.mediumSize = (this.largeSize + this.smallSize) / 2.0f;
            if (this.mediumCount > 0 && this.largeSize != targetLargeSize) {
                float targetAdjustment = (targetLargeSize - this.largeSize) * this.largeCount;
                float availableMediumFlex = this.mediumSize * 0.1f * this.mediumCount;
                float distribute = Math.min(Math.abs(targetAdjustment), availableMediumFlex);
                if (targetAdjustment > 0.0f) {
                    this.mediumSize -= distribute / this.mediumCount;
                    this.largeSize += distribute / this.largeCount;
                } else {
                    this.mediumSize += distribute / this.mediumCount;
                    this.largeSize -= distribute / this.largeCount;
                }
            }
        }

        private float calculateLargeSize(float availableSpace, int smallCount, float smallSize, int mediumCount, int largeCount) {
            float smallSize2 = smallCount > 0 ? smallSize : 0.0f;
            float smallSize3 = smallCount;
            return (availableSpace - ((smallSize3 + (mediumCount / 2.0f)) * smallSize2)) / (largeCount + (mediumCount / 2.0f));
        }

        private boolean isValid() {
            if (this.largeCount <= 0 || this.smallCount <= 0 || this.mediumCount <= 0) {
                return this.largeCount <= 0 || this.smallCount <= 0 || this.largeSize > this.smallSize;
            }
            return this.largeSize > this.mediumSize && this.mediumSize > this.smallSize;
        }

        private float cost(float targetLargeSize) {
            if (!isValid()) {
                return Float.MAX_VALUE;
            }
            return Math.abs(targetLargeSize - this.largeSize) * this.priority;
        }
    }
}
