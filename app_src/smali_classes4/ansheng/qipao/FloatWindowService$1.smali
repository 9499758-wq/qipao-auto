.class Lansheng/qipao/FloatWindowService$1;
.super Ljava/lang/Object;
.source "FloatWindowService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lansheng/qipao/FloatWindowService;->setDragListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private moved:Z

.field final synthetic this$0:Lansheng/qipao/FloatWindowService;


# direct methods
.method constructor <init>(Lansheng/qipao/FloatWindowService;)V
    .locals 0
    .param p1, "this$0"    # Lansheng/qipao/FloatWindowService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 210
    return v1

    .line 199
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lansheng/qipao/FloatWindowService$1;->initialTouchX:F

    sub-float/2addr v0, v2

    .line 200
    .local v0, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lansheng/qipao/FloatWindowService$1;->initialTouchY:F

    sub-float/2addr v2, v3

    .line 201
    .local v2, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lansheng/qipao/FloatWindowService;->-$$Nest$mdp(Lansheng/qipao/FloatWindowService;I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v4, v5}, Lansheng/qipao/FloatWindowService;->-$$Nest$mdp(Lansheng/qipao/FloatWindowService;I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 202
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lansheng/qipao/FloatWindowService$1;->moved:Z

    .line 203
    iget-object v3, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v3}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetwindowParams(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lansheng/qipao/FloatWindowService$1;->initialX:I

    float-to-int v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 204
    iget-object v3, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v3}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetwindowParams(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lansheng/qipao/FloatWindowService$1;->initialY:I

    float-to-int v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 205
    :try_start_0
    iget-object v3, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v3}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetviewAdded(Lansheng/qipao/FloatWindowService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v3}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetwindowManager(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v4}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetfloatView(Lansheng/qipao/FloatWindowService;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v5}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetwindowParams(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 207
    :cond_1
    :goto_0
    return v1

    .line 209
    .end local v0    # "dx":F
    .end local v2    # "dy":F
    :pswitch_1
    iget-boolean v0, p0, Lansheng/qipao/FloatWindowService$1;->moved:Z

    return v0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v0}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetwindowParams(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lansheng/qipao/FloatWindowService$1;->initialX:I

    iget-object v0, p0, Lansheng/qipao/FloatWindowService$1;->this$0:Lansheng/qipao/FloatWindowService;

    invoke-static {v0}, Lansheng/qipao/FloatWindowService;->-$$Nest$fgetwindowParams(Lansheng/qipao/FloatWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lansheng/qipao/FloatWindowService$1;->initialY:I

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lansheng/qipao/FloatWindowService$1;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lansheng/qipao/FloatWindowService$1;->initialTouchY:F

    .line 197
    iput-boolean v1, p0, Lansheng/qipao/FloatWindowService$1;->moved:Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
