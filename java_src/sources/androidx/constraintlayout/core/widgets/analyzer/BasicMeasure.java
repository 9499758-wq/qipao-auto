package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer constraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    public static class Measure {
        public static int SELF_DIMENSIONS = 0;
        public static int TRY_GIVEN_DIMENSIONS = 1;
        public static int USE_GIVEN_DIMENSIONS = 2;
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measureStrategy;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public void updateHierarchy(ConstraintWidgetContainer layout) {
        this.mVariableDimensionsWidgets.clear();
        int childCount = layout.mChildren.size();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget widget = layout.mChildren.get(i);
            if (widget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || widget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.mVariableDimensionsWidgets.add(widget);
            }
        }
        layout.invalidateGraph();
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.constraintWidgetContainer = constraintWidgetContainer;
    }

    private void measureChildren(ConstraintWidgetContainer layout) {
        int childCount = layout.mChildren.size();
        boolean optimize = layout.optimizeFor(64);
        Measurer measurer = layout.getMeasurer();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget child = layout.mChildren.get(i);
            if (!(child instanceof Guideline) && !(child instanceof Barrier) && !child.isInVirtualLayout() && (!optimize || child.horizontalRun == null || child.verticalRun == null || !child.horizontalRun.dimension.resolved || !child.verticalRun.dimension.resolved)) {
                boolean skip = false;
                ConstraintWidget.DimensionBehaviour widthBehavior = child.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour heightBehavior = child.getDimensionBehaviour(1);
                if (widthBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && child.mMatchConstraintDefaultWidth != 1 && heightBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && child.mMatchConstraintDefaultHeight != 1) {
                    skip = true;
                }
                if (!skip && layout.optimizeFor(1) && !(child instanceof VirtualLayout)) {
                    if (widthBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && child.mMatchConstraintDefaultWidth == 0 && heightBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !child.isInHorizontalChain()) {
                        skip = true;
                    }
                    if (heightBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && child.mMatchConstraintDefaultHeight == 0 && widthBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !child.isInHorizontalChain()) {
                        skip = true;
                    }
                    if ((widthBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || heightBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && child.mDimensionRatio > 0.0f) {
                        skip = true;
                    }
                }
                if (!skip) {
                    measure(measurer, child, Measure.SELF_DIMENSIONS);
                    if (layout.mMetrics != null) {
                        layout.mMetrics.measuredWidgets++;
                    }
                }
            }
        }
        measurer.didMeasures();
    }

    private void solveLinearSystem(ConstraintWidgetContainer layout, String reason, int pass, int w, int h) {
        int minWidth = layout.getMinWidth();
        int minHeight = layout.getMinHeight();
        layout.setMinWidth(0);
        layout.setMinHeight(0);
        layout.setWidth(w);
        layout.setHeight(h);
        layout.setMinWidth(minWidth);
        layout.setMinHeight(minHeight);
        this.constraintWidgetContainer.setPass(pass);
        this.constraintWidgetContainer.layout();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0189  */
    /* JADX WARN: Code duplicated, block: B:102:0x019b  */
    /* JADX WARN: Code duplicated, block: B:104:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:106:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:107:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:111:0x01be  */
    /* JADX WARN: Code duplicated, block: B:114:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:116:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:117:0x0203  */
    /* JADX WARN: Code duplicated, block: B:119:0x0219  */
    /* JADX WARN: Code duplicated, block: B:120:0x0226  */
    /* JADX WARN: Code duplicated, block: B:123:0x0234  */
    /* JADX WARN: Code duplicated, block: B:128:0x0255  */
    /* JADX WARN: Code duplicated, block: B:130:0x0259  */
    /* JADX WARN: Code duplicated, block: B:132:0x025d  */
    /* JADX WARN: Code duplicated, block: B:142:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:144:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:165:0x0301  */
    /* JADX WARN: Code duplicated, block: B:166:0x0306  */
    /* JADX WARN: Code duplicated, block: B:169:0x0312  */
    /* JADX WARN: Code duplicated, block: B:170:0x031f  */
    /* JADX WARN: Code duplicated, block: B:173:0x032d  */
    /* JADX WARN: Code duplicated, block: B:175:0x0332  */
    /* JADX WARN: Code duplicated, block: B:178:0x034e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0352  */
    /* JADX WARN: Code duplicated, block: B:182:0x0356  */
    /* JADX WARN: Code duplicated, block: B:184:0x035b  */
    /* JADX WARN: Code duplicated, block: B:190:0x037c  */
    /* JADX WARN: Code duplicated, block: B:196:0x0396 A[LOOP:2: B:141:0x02a5->B:196:0x0396, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:199:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:212:0x03b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x0384 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:74:0x0115  */
    /* JADX WARN: Code duplicated, block: B:76:0x011f  */
    /* JADX WARN: Code duplicated, block: B:77:0x012d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0132  */
    /* JADX WARN: Code duplicated, block: B:80:0x013c  */
    /* JADX WARN: Code duplicated, block: B:82:0x013f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0143  */
    /* JADX WARN: Code duplicated, block: B:86:0x0146  */
    /* JADX WARN: Code duplicated, block: B:87:0x0148  */
    /* JADX WARN: Code duplicated, block: B:90:0x0157  */
    /* JADX WARN: Code duplicated, block: B:98:0x017b  */
    public long solverMeasure(ConstraintWidgetContainer layout, int optimizationLevel, int paddingX, int paddingY, int widthMode, int widthSize, int heightMode, int heightSize, int lastMeasureWidth, int lastMeasureHeight) {
        boolean optimize;
        boolean matchHeight;
        long j;
        boolean optimize2;
        boolean allSolved;
        boolean containerWrapHeight;
        int computations;
        int optimizations;
        int optimizations2;
        ConstraintWidgetContainer constraintWidgetContainer;
        long layoutTime;
        boolean needSolverPass;
        boolean z;
        boolean containerWrapWidth;
        int minHeight;
        int startingWidth;
        int startingWidth2;
        int startingHeight;
        int maxIterations;
        int j2;
        int minWidth;
        int minWidth2;
        boolean needSolverPass2;
        int sizeDependentWidgetsCount;
        int preBaselineDistance;
        boolean needSolverPass3;
        int minHeight2;
        int minWidth3;
        int sizeDependentWidgetsCount2;
        int maxIterations2;
        ConstraintWidget widget;
        int preWidth;
        int preHeight;
        int i;
        int measureStrategy;
        int sizeDependentWidgetsCount3;
        int sizeDependentWidgetsCount4;
        int measureStrategy2;
        int measuredWidth;
        int measuredHeight;
        ConstraintWidget widget2;
        int preWidth2;
        int preHeight2;
        boolean needSolverPass4;
        int measuredWidth2;
        int measuredHeight2;
        boolean needSolverPass5;
        int computations2;
        int widthSize2;
        int heightSize2;
        boolean allSolved2;
        int widthSize3;
        boolean z2;
        boolean z3;
        BasicMeasure basicMeasure = this;
        Measurer measurer = layout.getMeasurer();
        long layoutTime2 = 0;
        int childCount = layout.mChildren.size();
        int startingWidth3 = layout.getWidth();
        int startingHeight2 = layout.getHeight();
        boolean optimizeWrap = Optimizer.enabled(optimizationLevel, 128);
        boolean optimize3 = optimizeWrap || Optimizer.enabled(optimizationLevel, 64);
        if (!optimize3) {
            optimize = optimize3;
        } else {
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    optimize = optimize3;
                } else {
                    ConstraintWidget child = layout.mChildren.get(i2);
                    boolean optimize4 = optimize3;
                    boolean matchWidth = child.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    boolean matchWidth2 = matchWidth;
                    boolean matchHeight2 = child.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    boolean ratio = matchWidth2 && matchHeight2 && child.getDimensionRatio() > 0.0f;
                    if (child.isInHorizontalChain() && ratio) {
                        matchHeight = false;
                        break;
                    }
                    if (child.isInVerticalChain() && ratio) {
                        matchHeight = false;
                        break;
                    }
                    boolean matchHeight3 = child instanceof VirtualLayout;
                    if (matchHeight3) {
                        matchHeight = false;
                        break;
                    }
                    if (!child.isInHorizontalChain() && !child.isInVerticalChain()) {
                        i2++;
                        optimize3 = optimize4;
                    } else {
                        matchHeight = false;
                        break;
                    }
                }
            }
            if (matchHeight || LinearSystem.sMetrics == null) {
                j = 1;
            } else {
                j = 1;
                LinearSystem.sMetrics.measures++;
            }
            optimize2 = ((widthMode != 1073741824 && heightMode == 1073741824) || optimizeWrap) & matchHeight;
            if (optimize2) {
                allSolved = false;
                containerWrapHeight = true;
                computations = 0;
            } else {
                computations2 = 0;
                widthSize2 = Math.min(layout.getMaxWidth(), widthSize);
                heightSize2 = Math.min(layout.getMaxHeight(), heightSize);
                if (widthMode == 1073741824 && layout.getWidth() != widthSize2) {
                    layout.setWidth(widthSize2);
                    layout.invalidateGraph();
                }
                if (heightMode == 1073741824 && layout.getHeight() != heightSize2) {
                    layout.setHeight(heightSize2);
                    layout.invalidateGraph();
                }
                if (widthMode != 1073741824 && heightMode == 1073741824) {
                    allSolved2 = layout.directMeasure(optimizeWrap);
                    computations2 = 2;
                    widthSize3 = widthSize2;
                    heightSize2 = heightSize2;
                    z2 = false;
                } else {
                    allSolved2 = layout.directMeasureSetup(optimizeWrap);
                    widthSize3 = widthSize2;
                    if (widthMode == 1073741824) {
                        z2 = false;
                        allSolved2 &= layout.directMeasureWithOrientation(optimizeWrap, 0);
                        computations2 = 0 + 1;
                    } else {
                        z2 = false;
                    }
                    if (heightMode == 1073741824) {
                        allSolved2 &= layout.directMeasureWithOrientation(optimizeWrap, 1);
                        computations2++;
                    }
                }
                if (allSolved2) {
                    if (widthMode == 1073741824) {
                        z2 = true;
                    }
                    if (heightMode == 1073741824) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    layout.updateFromRuns(z2, z3);
                }
                allSolved = allSolved2;
                containerWrapHeight = true;
                computations = computations2;
            }
            if (!allSolved && computations == 2) {
                return 0L;
            }
            optimizations = layout.getOptimizationLevel();
            if (childCount > 0) {
                measureChildren(layout);
            }
            updateHierarchy(layout);
            basicMeasure.mVariableDimensionsWidgets.size();
            if (childCount > 0) {
                optimizations2 = optimizations;
                constraintWidgetContainer = layout;
                basicMeasure.solveLinearSystem(constraintWidgetContainer, "First pass", 0, startingWidth3, startingHeight2);
            } else {
                optimizations2 = optimizations;
                constraintWidgetContainer = layout;
            }
            if (sizeDependentWidgetsCount > 0) {
                layoutTime = 0;
            } else {
                needSolverPass = false;
                if (constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z = true;
                } else {
                    z = false;
                }
                containerWrapWidth = z;
                if (constraintWidgetContainer.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    containerWrapHeight = false;
                }
                int minWidth4 = Math.max(constraintWidgetContainer.getWidth(), basicMeasure.constraintWidgetContainer.getMinWidth());
                minHeight = Math.max(constraintWidgetContainer.getHeight(), basicMeasure.constraintWidgetContainer.getMinHeight());
                int minWidth5 = minWidth4;
                startingWidth = startingWidth3;
                startingWidth2 = 0;
                while (startingWidth2 < sizeDependentWidgetsCount) {
                    int startingHeight3 = startingHeight2;
                    widget2 = basicMeasure.mVariableDimensionsWidgets.get(startingWidth2);
                    int i3 = startingWidth2;
                    if (widget2 instanceof VirtualLayout) {
                        preWidth2 = widget2.getWidth();
                        preHeight2 = widget2.getHeight();
                        needSolverPass4 = needSolverPass | basicMeasure.measure(measurer, widget2, Measure.TRY_GIVEN_DIMENSIONS);
                        if (constraintWidgetContainer.mMetrics != null) {
                            constraintWidgetContainer.mMetrics.measuredMatchWidgets += j;
                        }
                        measuredWidth2 = widget2.getWidth();
                        measuredHeight2 = widget2.getHeight();
                        if (measuredWidth2 != preWidth2) {
                            widget2.setWidth(measuredWidth2);
                            if (!containerWrapWidth && widget2.getRight() > minWidth5) {
                                int w = widget2.getRight() + widget2.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin();
                                minWidth5 = Math.max(minWidth5, w);
                            }
                            needSolverPass4 = true;
                        }
                        if (measuredHeight2 != preHeight2) {
                            widget2.setHeight(measuredHeight2);
                            if (containerWrapHeight && widget2.getBottom() > minHeight) {
                                int h = widget2.getBottom() + widget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin();
                                minHeight = Math.max(minHeight, h);
                            }
                            needSolverPass4 = true;
                        }
                        VirtualLayout virtualLayout = (VirtualLayout) widget2;
                        needSolverPass5 = needSolverPass4 | virtualLayout.needSolverPass();
                    } else {
                        childCount = childCount;
                        optimizeWrap = optimizeWrap;
                        needSolverPass5 = needSolverPass;
                    }
                    startingWidth2 = i3 + 1;
                    needSolverPass = needSolverPass5;
                    startingHeight2 = startingHeight3;
                    layoutTime2 = layoutTime2;
                    childCount = childCount;
                    optimizeWrap = optimizeWrap;
                }
                startingHeight = startingHeight2;
                layoutTime = layoutTime2;
                maxIterations = 2;
                j2 = 0;
                minWidth = minWidth5;
                minWidth2 = minHeight;
                needSolverPass2 = needSolverPass;
                while (j2 < maxIterations) {
                    preBaselineDistance = 0;
                    needSolverPass3 = needSolverPass2;
                    minHeight2 = minWidth2;
                    minWidth3 = minWidth;
                    while (preBaselineDistance < sizeDependentWidgetsCount) {
                        widget = basicMeasure.mVariableDimensionsWidgets.get(preBaselineDistance);
                        if ((!(widget instanceof Helper) && !(widget instanceof VirtualLayout)) || (widget instanceof Guideline) || widget.getVisibility() == 8 || ((optimize2 && widget.horizontalRun.dimension.resolved && widget.verticalRun.dimension.resolved) || (widget instanceof VirtualLayout))) {
                            i = preBaselineDistance;
                            sizeDependentWidgetsCount3 = sizeDependentWidgetsCount;
                            maxIterations = maxIterations;
                        } else {
                            preWidth = widget.getWidth();
                            preHeight = widget.getHeight();
                            i = preBaselineDistance;
                            int preBaselineDistance2 = widget.getBaselineDistance();
                            measureStrategy = Measure.TRY_GIVEN_DIMENSIONS;
                            sizeDependentWidgetsCount3 = sizeDependentWidgetsCount;
                            sizeDependentWidgetsCount4 = maxIterations - 1;
                            if (j2 != sizeDependentWidgetsCount4) {
                                measureStrategy2 = measureStrategy;
                            } else {
                                int measureStrategy3 = Measure.USE_GIVEN_DIMENSIONS;
                                measureStrategy2 = measureStrategy3;
                            }
                            boolean hasMeasure = basicMeasure.measure(measurer, widget, measureStrategy2);
                            needSolverPass3 |= hasMeasure;
                            if (constraintWidgetContainer.mMetrics != null) {
                                constraintWidgetContainer.mMetrics.measuredMatchWidgets += j;
                            }
                            measuredWidth = widget.getWidth();
                            measuredHeight = widget.getHeight();
                            if (measuredWidth != preWidth) {
                                widget.setWidth(measuredWidth);
                                if (!containerWrapWidth && widget.getRight() > minWidth3) {
                                    int w2 = widget.getRight() + widget.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin();
                                    minWidth3 = Math.max(minWidth3, w2);
                                }
                                needSolverPass3 = true;
                            }
                            if (measuredHeight != preHeight) {
                                widget.setHeight(measuredHeight);
                                if (containerWrapHeight && widget.getBottom() > minHeight2) {
                                    int h2 = widget.getBottom() + widget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin();
                                    minHeight2 = Math.max(minHeight2, h2);
                                }
                                needSolverPass3 = true;
                            }
                            if (!widget.hasBaseline() && preBaselineDistance2 != widget.getBaselineDistance()) {
                                needSolverPass3 = true;
                            }
                        }
                        preBaselineDistance = i + 1;
                        basicMeasure = this;
                        sizeDependentWidgetsCount = sizeDependentWidgetsCount3;
                        maxIterations = maxIterations;
                    }
                    sizeDependentWidgetsCount2 = sizeDependentWidgetsCount;
                    maxIterations2 = maxIterations;
                    if (needSolverPass3) {
                        break;
                    }
                    int startingWidth4 = startingWidth;
                    solveLinearSystem(constraintWidgetContainer, "intermediate pass", j2 + 1, startingWidth4, startingHeight);
                    needSolverPass2 = false;
                    j2++;
                    sizeDependentWidgetsCount = sizeDependentWidgetsCount2;
                    startingWidth = startingWidth4;
                    minWidth2 = minHeight2;
                    minWidth = minWidth3;
                    maxIterations = maxIterations2;
                    basicMeasure = this;
                }
            }
            constraintWidgetContainer.setOptimizationLevel(optimizations2);
            return layoutTime;
        }
        matchHeight = optimize;
        if (matchHeight) {
            j = 1;
        } else {
            j = 1;
        }
        optimize2 = ((widthMode != 1073741824 && heightMode == 1073741824) || optimizeWrap) & matchHeight;
        if (optimize2) {
            allSolved = false;
            containerWrapHeight = true;
            computations = 0;
        } else {
            computations2 = 0;
            widthSize2 = Math.min(layout.getMaxWidth(), widthSize);
            heightSize2 = Math.min(layout.getMaxHeight(), heightSize);
            if (widthMode == 1073741824) {
                layout.setWidth(widthSize2);
                layout.invalidateGraph();
            }
            if (heightMode == 1073741824) {
                layout.setHeight(heightSize2);
                layout.invalidateGraph();
            }
            if (widthMode != 1073741824) {
                allSolved2 = layout.directMeasureSetup(optimizeWrap);
                widthSize3 = widthSize2;
                if (widthMode == 1073741824) {
                    z2 = false;
                    allSolved2 &= layout.directMeasureWithOrientation(optimizeWrap, 0);
                    computations2 = 0 + 1;
                } else {
                    z2 = false;
                }
                if (heightMode == 1073741824) {
                    allSolved2 &= layout.directMeasureWithOrientation(optimizeWrap, 1);
                    computations2++;
                }
            } else {
                allSolved2 = layout.directMeasureSetup(optimizeWrap);
                widthSize3 = widthSize2;
                if (widthMode == 1073741824) {
                    z2 = false;
                    allSolved2 &= layout.directMeasureWithOrientation(optimizeWrap, 0);
                    computations2 = 0 + 1;
                } else {
                    z2 = false;
                }
                if (heightMode == 1073741824) {
                    allSolved2 &= layout.directMeasureWithOrientation(optimizeWrap, 1);
                    computations2++;
                }
            }
            if (allSolved2) {
                if (widthMode == 1073741824) {
                    z2 = true;
                }
                if (heightMode == 1073741824) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                layout.updateFromRuns(z2, z3);
            }
            allSolved = allSolved2;
            containerWrapHeight = true;
            computations = computations2;
        }
        if (!allSolved) {
        }
        optimizations = layout.getOptimizationLevel();
        if (childCount > 0) {
            measureChildren(layout);
        }
        updateHierarchy(layout);
        basicMeasure.mVariableDimensionsWidgets.size();
        if (childCount > 0) {
            optimizations2 = optimizations;
            constraintWidgetContainer = layout;
            basicMeasure.solveLinearSystem(constraintWidgetContainer, "First pass", 0, startingWidth3, startingHeight2);
        } else {
            optimizations2 = optimizations;
            constraintWidgetContainer = layout;
        }
        if (sizeDependentWidgetsCount > 0) {
            layoutTime = 0;
        } else {
            needSolverPass = false;
            if (constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                z = true;
            } else {
                z = false;
            }
            containerWrapWidth = z;
            if (constraintWidgetContainer.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                containerWrapHeight = false;
            }
            int minWidth6 = Math.max(constraintWidgetContainer.getWidth(), basicMeasure.constraintWidgetContainer.getMinWidth());
            minHeight = Math.max(constraintWidgetContainer.getHeight(), basicMeasure.constraintWidgetContainer.getMinHeight());
            int minWidth7 = minWidth6;
            startingWidth = startingWidth3;
            startingWidth2 = 0;
            while (startingWidth2 < sizeDependentWidgetsCount) {
                int startingHeight4 = startingHeight2;
                widget2 = basicMeasure.mVariableDimensionsWidgets.get(startingWidth2);
                int i4 = startingWidth2;
                if (widget2 instanceof VirtualLayout) {
                    childCount = childCount;
                    optimizeWrap = optimizeWrap;
                    needSolverPass5 = needSolverPass;
                } else {
                    preWidth2 = widget2.getWidth();
                    preHeight2 = widget2.getHeight();
                    needSolverPass4 = needSolverPass | basicMeasure.measure(measurer, widget2, Measure.TRY_GIVEN_DIMENSIONS);
                    if (constraintWidgetContainer.mMetrics != null) {
                        constraintWidgetContainer.mMetrics.measuredMatchWidgets += j;
                    }
                    measuredWidth2 = widget2.getWidth();
                    measuredHeight2 = widget2.getHeight();
                    if (measuredWidth2 != preWidth2) {
                        widget2.setWidth(measuredWidth2);
                        if (!containerWrapWidth) {
                        }
                        needSolverPass4 = true;
                    }
                    if (measuredHeight2 != preHeight2) {
                        widget2.setHeight(measuredHeight2);
                        if (containerWrapHeight) {
                            int h3 = widget2.getBottom() + widget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin();
                            minHeight = Math.max(minHeight, h3);
                        }
                        needSolverPass4 = true;
                    }
                    VirtualLayout virtualLayout2 = (VirtualLayout) widget2;
                    needSolverPass5 = needSolverPass4 | virtualLayout2.needSolverPass();
                }
                startingWidth2 = i4 + 1;
                needSolverPass = needSolverPass5;
                startingHeight2 = startingHeight4;
                layoutTime2 = layoutTime2;
                childCount = childCount;
                optimizeWrap = optimizeWrap;
            }
            startingHeight = startingHeight2;
            layoutTime = layoutTime2;
            maxIterations = 2;
            j2 = 0;
            minWidth = minWidth7;
            minWidth2 = minHeight;
            needSolverPass2 = needSolverPass;
            while (j2 < maxIterations) {
                preBaselineDistance = 0;
                needSolverPass3 = needSolverPass2;
                minHeight2 = minWidth2;
                minWidth3 = minWidth;
                while (preBaselineDistance < sizeDependentWidgetsCount) {
                    widget = basicMeasure.mVariableDimensionsWidgets.get(preBaselineDistance);
                    if (!(widget instanceof Helper)) {
                        preWidth = widget.getWidth();
                        preHeight = widget.getHeight();
                        i = preBaselineDistance;
                        int preBaselineDistance3 = widget.getBaselineDistance();
                        measureStrategy = Measure.TRY_GIVEN_DIMENSIONS;
                        sizeDependentWidgetsCount3 = sizeDependentWidgetsCount;
                        sizeDependentWidgetsCount4 = maxIterations - 1;
                        if (j2 != sizeDependentWidgetsCount4) {
                            measureStrategy2 = measureStrategy;
                        } else {
                            int measureStrategy4 = Measure.USE_GIVEN_DIMENSIONS;
                            measureStrategy2 = measureStrategy4;
                        }
                        boolean hasMeasure2 = basicMeasure.measure(measurer, widget, measureStrategy2);
                        needSolverPass3 |= hasMeasure2;
                        if (constraintWidgetContainer.mMetrics != null) {
                            constraintWidgetContainer.mMetrics.measuredMatchWidgets += j;
                        }
                        measuredWidth = widget.getWidth();
                        measuredHeight = widget.getHeight();
                        if (measuredWidth != preWidth) {
                            widget.setWidth(measuredWidth);
                            if (!containerWrapWidth) {
                            }
                            needSolverPass3 = true;
                        }
                        if (measuredHeight != preHeight) {
                            widget.setHeight(measuredHeight);
                            if (containerWrapHeight) {
                                int h4 = widget.getBottom() + widget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin();
                                minHeight2 = Math.max(minHeight2, h4);
                            }
                            needSolverPass3 = true;
                        }
                        if (!widget.hasBaseline()) {
                        }
                    } else {
                        preWidth = widget.getWidth();
                        preHeight = widget.getHeight();
                        i = preBaselineDistance;
                        int preBaselineDistance4 = widget.getBaselineDistance();
                        measureStrategy = Measure.TRY_GIVEN_DIMENSIONS;
                        sizeDependentWidgetsCount3 = sizeDependentWidgetsCount;
                        sizeDependentWidgetsCount4 = maxIterations - 1;
                        if (j2 != sizeDependentWidgetsCount4) {
                            measureStrategy2 = measureStrategy;
                        } else {
                            int measureStrategy5 = Measure.USE_GIVEN_DIMENSIONS;
                            measureStrategy2 = measureStrategy5;
                        }
                        boolean hasMeasure3 = basicMeasure.measure(measurer, widget, measureStrategy2);
                        needSolverPass3 |= hasMeasure3;
                        if (constraintWidgetContainer.mMetrics != null) {
                            constraintWidgetContainer.mMetrics.measuredMatchWidgets += j;
                        }
                        measuredWidth = widget.getWidth();
                        measuredHeight = widget.getHeight();
                        if (measuredWidth != preWidth) {
                            widget.setWidth(measuredWidth);
                            if (!containerWrapWidth) {
                            }
                            needSolverPass3 = true;
                        }
                        if (measuredHeight != preHeight) {
                            widget.setHeight(measuredHeight);
                            if (containerWrapHeight) {
                                int h5 = widget.getBottom() + widget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin();
                                minHeight2 = Math.max(minHeight2, h5);
                            }
                            needSolverPass3 = true;
                        }
                        if (!widget.hasBaseline()) {
                        }
                    }
                    preBaselineDistance = i + 1;
                    basicMeasure = this;
                    sizeDependentWidgetsCount = sizeDependentWidgetsCount3;
                    maxIterations = maxIterations;
                }
                sizeDependentWidgetsCount2 = sizeDependentWidgetsCount;
                maxIterations2 = maxIterations;
                if (needSolverPass3) {
                    break;
                    break;
                }
                int startingWidth5 = startingWidth;
                solveLinearSystem(constraintWidgetContainer, "intermediate pass", j2 + 1, startingWidth5, startingHeight);
                needSolverPass2 = false;
                j2++;
                sizeDependentWidgetsCount = sizeDependentWidgetsCount2;
                startingWidth = startingWidth5;
                minWidth2 = minHeight2;
                minWidth = minWidth3;
                maxIterations = maxIterations2;
                basicMeasure = this;
            }
        }
        constraintWidgetContainer.setOptimizationLevel(optimizations2);
        return layoutTime;
    }

    private boolean measure(Measurer measurer, ConstraintWidget widget, int measureStrategy) {
        this.mMeasure.horizontalBehavior = widget.getHorizontalDimensionBehaviour();
        this.mMeasure.verticalBehavior = widget.getVerticalDimensionBehaviour();
        this.mMeasure.horizontalDimension = widget.getWidth();
        this.mMeasure.verticalDimension = widget.getHeight();
        this.mMeasure.measuredNeedsSolverPass = false;
        this.mMeasure.measureStrategy = measureStrategy;
        boolean horizontalMatchConstraints = this.mMeasure.horizontalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean verticalMatchConstraints = this.mMeasure.verticalBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean horizontalUseRatio = horizontalMatchConstraints && widget.mDimensionRatio > 0.0f;
        boolean verticalUseRatio = verticalMatchConstraints && widget.mDimensionRatio > 0.0f;
        if (horizontalUseRatio && widget.mResolvedMatchConstraintDefault[0] == 4) {
            this.mMeasure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (verticalUseRatio && widget.mResolvedMatchConstraintDefault[1] == 4) {
            this.mMeasure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(widget, this.mMeasure);
        widget.setWidth(this.mMeasure.measuredWidth);
        widget.setHeight(this.mMeasure.measuredHeight);
        widget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        widget.setBaselineDistance(this.mMeasure.measuredBaseline);
        this.mMeasure.measureStrategy = Measure.SELF_DIMENSIONS;
        return this.mMeasure.measuredNeedsSolverPass;
    }
}
