.class public final Lansheng/qipao/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBatteryOptimization:Landroid/widget/Button;

.field public final btnLaunchMusic:Landroid/widget/Button;

.field public final btnOpenAccessibility:Landroid/widget/Button;

.field public final btnStopService:Landroid/widget/Button;

.field public final btnViewLogs:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final switchFloatWindow:Landroid/widget/Switch;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Switch;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnBatteryOptimization"    # Landroid/widget/Button;
    .param p3, "btnLaunchMusic"    # Landroid/widget/Button;
    .param p4, "btnOpenAccessibility"    # Landroid/widget/Button;
    .param p5, "btnStopService"    # Landroid/widget/Button;
    .param p6, "btnViewLogs"    # Landroid/widget/Button;
    .param p7, "switchFloatWindow"    # Landroid/widget/Switch;
    .param p8, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lansheng/qipao/databinding/ActivityMainBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lansheng/qipao/databinding/ActivityMainBinding;->btnBatteryOptimization:Landroid/widget/Button;

    .line 51
    iput-object p3, p0, Lansheng/qipao/databinding/ActivityMainBinding;->btnLaunchMusic:Landroid/widget/Button;

    .line 52
    iput-object p4, p0, Lansheng/qipao/databinding/ActivityMainBinding;->btnOpenAccessibility:Landroid/widget/Button;

    .line 53
    iput-object p5, p0, Lansheng/qipao/databinding/ActivityMainBinding;->btnStopService:Landroid/widget/Button;

    .line 54
    iput-object p6, p0, Lansheng/qipao/databinding/ActivityMainBinding;->btnViewLogs:Landroid/widget/Button;

    .line 55
    iput-object p7, p0, Lansheng/qipao/databinding/ActivityMainBinding;->switchFloatWindow:Landroid/widget/Switch;

    .line 56
    iput-object p8, p0, Lansheng/qipao/databinding/ActivityMainBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 57
    return-void
.end method

.method public static bind(Landroid/view/View;)Lansheng/qipao/databinding/ActivityMainBinding;
    .locals 11
    .param p0, "rootView"    # Landroid/view/View;

    .line 86
    sget v0, Lansheng/qipao/R$id;->btn_battery_optimization:I

    .line 87
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    .line 88
    .local v4, "btnBatteryOptimization":Landroid/widget/Button;
    if-eqz v4, :cond_6

    .line 92
    sget v0, Lansheng/qipao/R$id;->btn_launch_music:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    .line 94
    .local v5, "btnLaunchMusic":Landroid/widget/Button;
    if-eqz v5, :cond_5

    .line 98
    sget v0, Lansheng/qipao/R$id;->btn_open_accessibility:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    .line 100
    .local v6, "btnOpenAccessibility":Landroid/widget/Button;
    if-eqz v6, :cond_4

    .line 104
    sget v0, Lansheng/qipao/R$id;->btn_stop_service:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    .line 106
    .local v7, "btnStopService":Landroid/widget/Button;
    if-eqz v7, :cond_3

    .line 110
    sget v0, Lansheng/qipao/R$id;->btn_view_logs:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    .line 112
    .local v8, "btnViewLogs":Landroid/widget/Button;
    if-eqz v8, :cond_2

    .line 116
    sget v0, Lansheng/qipao/R$id;->switch_float_window:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Switch;

    .line 118
    .local v9, "switchFloatWindow":Landroid/widget/Switch;
    if-eqz v9, :cond_1

    .line 122
    sget v0, Lansheng/qipao/R$id;->toolbar:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/Toolbar;

    .line 124
    .local v10, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v10, :cond_0

    .line 128
    new-instance v2, Lansheng/qipao/databinding/ActivityMainBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v10}, Lansheng/qipao/databinding/ActivityMainBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Switch;Landroidx/appcompat/widget/Toolbar;)V

    return-object v2

    .line 125
    :cond_0
    goto :goto_0

    .line 119
    .end local v10    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    :cond_1
    goto :goto_0

    .line 113
    .end local v9    # "switchFloatWindow":Landroid/widget/Switch;
    :cond_2
    goto :goto_0

    .line 107
    .end local v8    # "btnViewLogs":Landroid/widget/Button;
    :cond_3
    goto :goto_0

    .line 101
    .end local v7    # "btnStopService":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 95
    .end local v6    # "btnOpenAccessibility":Landroid/widget/Button;
    :cond_5
    goto :goto_0

    .line 89
    .end local v5    # "btnLaunchMusic":Landroid/widget/Button;
    :cond_6
    nop

    .line 132
    .end local v4    # "btnBatteryOptimization":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lansheng/qipao/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lansheng/qipao/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lansheng/qipao/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lansheng/qipao/databinding/ActivityMainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 73
    sget v0, Lansheng/qipao/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {v0}, Lansheng/qipao/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lansheng/qipao/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lansheng/qipao/databinding/ActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lansheng/qipao/databinding/ActivityMainBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
