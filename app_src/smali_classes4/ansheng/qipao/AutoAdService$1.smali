.class Lansheng/qipao/AutoAdService$1;
.super Ljava/lang/Object;
.source "AutoAdService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lansheng/qipao/AutoAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lansheng/qipao/AutoAdService;


# direct methods
.method constructor <init>(Lansheng/qipao/AutoAdService;)V
    .locals 0
    .param p1, "this$0"    # Lansheng/qipao/AutoAdService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lansheng/qipao/AutoAdService$1;->this$0:Lansheng/qipao/AutoAdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    :try_start_0
    sget-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lansheng/qipao/AutoAdService$1;->this$0:Lansheng/qipao/AutoAdService;

    invoke-static {v0}, Lansheng/qipao/AutoAdService;->-$$Nest$fgetisConfigLoaded(Lansheng/qipao/AutoAdService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lansheng/qipao/AutoAdService$1;->this$0:Lansheng/qipao/AutoAdService;

    invoke-virtual {v0}, Lansheng/qipao/AutoAdService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 142
    .local v0, "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lansheng/qipao/AutoAdService$1;->this$0:Lansheng/qipao/AutoAdService;

    invoke-static {v1, v0}, Lansheng/qipao/AutoAdService;->-$$Nest$mcheckAndHandleAdFlow(Lansheng/qipao/AutoAdService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v0    # "rootNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    if-eqz v1, :cond_1

    sget-object v1, Lansheng/qipao/FloatWindowService;->instance:Lansheng/qipao/FloatWindowService;

    const-string v2, "\u8f6e\u8be2\u5f02\u5e38"

    invoke-virtual {v1, v2}, Lansheng/qipao/FloatWindowService;->addLog(Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-boolean v0, Lansheng/qipao/AutoAdService;->isRunning:Z

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lansheng/qipao/AutoAdService$1;->this$0:Lansheng/qipao/AutoAdService;

    invoke-static {v0}, Lansheng/qipao/AutoAdService;->-$$Nest$fgethandler(Lansheng/qipao/AutoAdService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_2
    return-void
.end method
