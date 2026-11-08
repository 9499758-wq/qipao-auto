.class public Lcom/itsaky/androidide/logsender/LogSenderService;
.super Landroid/app/Service;
.source "LogSenderService.java"


# static fields
.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "ide.logsender.service.start"

.field public static final ACTION_STOP_SERVICE:Ljava/lang/String; = "ide.logsender.service.stop"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "ide.logsender.service"

.field private static final NOTIFICATION_ID:I = 0x284


# instance fields
.field private final logSender:Lcom/itsaky/androidide/logsender/LogSender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Lcom/itsaky/androidide/logsender/LogSender;

    invoke-direct {v0}, Lcom/itsaky/androidide/logsender/LogSender;-><init>()V

    iput-object v0, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    return-void
.end method

.method private actionStartService()V
    .locals 7

    .line 116
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Starting log sender service..."

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/itsaky/androidide/logsender/utils/Logger;->info([Ljava/lang/Object;)V

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "result":Z
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsaky/androidide/logsender/LogSender;->bind(Landroid/content/Context;)Z

    move-result v4

    move v1, v4

    .line 121
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Bind to Code On The Go:"

    aput-object v6, v5, v2

    aput-object v4, v5, v0

    invoke-static {v5}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v4

    .line 123
    .local v4, "err":Ljava/lang/Exception;
    sget v5, Lcom/itsaky/androidide/logsender/R$string;->msg_bind_service_failed:I

    invoke-virtual {p0, v5}, Lcom/itsaky/androidide/logsender/LogSenderService;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/itsaky/androidide/logsender/utils/Logger;->error([Ljava/lang/Object;)V

    .line 126
    .end local v4    # "err":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_0

    .line 127
    sget v0, Lcom/itsaky/androidide/logsender/R$string;->msg_bind_service_failed:I

    invoke-virtual {p0, v0}, Lcom/itsaky/androidide/logsender/LogSenderService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-direct {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->actionStopService()V

    .line 130
    :cond_0
    return-void
.end method

.method private actionStopService()V
    .locals 3

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stopping log sender service..."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->info([Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->stopSelf()V

    .line 135
    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 9

    .line 138
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, -0x1

    .line 146
    .local v1, "priority":I
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v2, "builder":Landroid/app/Notification$Builder;
    sget v3, Lcom/itsaky/androidide/logsender/R$string;->notification_title:I

    invoke-virtual {p0, v3}, Lcom/itsaky/androidide/logsender/LogSenderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "title":Ljava/lang/String;
    sget v4, Lcom/itsaky/androidide/logsender/R$string;->notification_text:I

    invoke-virtual {p0, v4}, Lcom/itsaky/androidide/logsender/LogSenderService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 150
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 151
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 152
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 154
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    .line 155
    const-string v5, "ide.logsender.service"

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 158
    :cond_0
    nop

    .line 159
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 162
    sget v6, Lcom/itsaky/androidide/logsender/R$drawable;->ic_androidide_log:I

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 164
    nop

    .line 165
    const v6, -0x9f8275

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 168
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 171
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/itsaky/androidide/logsender/LogSenderService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "ide.logsender.service.stop"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 172
    .local v6, "exitIntent":Landroid/content/Intent;
    sget v7, Lcom/itsaky/androidide/logsender/R$string;->notification_action_exit:I

    .line 173
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    const/high16 v8, 0x4000000

    invoke-static {p0, v5, v6, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 172
    const v8, 0x108001d

    invoke-virtual {v2, v8, v7, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 176
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    return-object v5
.end method

.method private setupNotificationChannel()V
    .locals 4

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    sget v1, Lcom/itsaky/androidide/logsender/R$string;->notification_channel_name:I

    .line 186
    invoke-virtual {p0, v1}, Lcom/itsaky/androidide/logsender/LogSenderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "ide.logsender.service"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 189
    .local v0, "channel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/itsaky/androidide/logsender/LogSenderService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 190
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 193
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unexpected request to bind."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[LogSenderService] onCreate()"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    invoke-direct {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->setupNotificationChannel()V

    .line 60
    const/16 v0, 0x284

    invoke-direct {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsaky/androidide/logsender/LogSenderService;->startForeground(ILandroid/app/Notification;)V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 65
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[LogSenderService] [onDestroy]"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {v1}, Lcom/itsaky/androidide/logsender/LogSender;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {v1}, Lcom/itsaky/androidide/logsender/LogSender;->isBinding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not bound to Code On The Go. Ignored."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service is being destroyed. Destroying log sender..."

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->warn([Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsaky/androidide/logsender/LogSender;->destroy(Landroid/content/Context;)V

    .line 73
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onStartCommand"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    .line 80
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "ide.logsender.service.start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "ide.logsender.service.stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Unknown service action:"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/itsaky/androidide/logsender/utils/Logger;->error([Ljava/lang/Object;)V

    goto :goto_2

    .line 91
    :pswitch_0
    invoke-direct {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->actionStopService()V

    .line 92
    goto :goto_2

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->actionStartService()V

    .line 89
    nop

    .line 98
    :goto_2
    return v5

    .line 81
    :cond_2
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogSenderService started with null intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/itsaky/androidide/logsender/utils/Logger;->warn([Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->stopSelf()V

    .line 83
    return v5

    :sswitch_data_0
    .sparse-switch
        0x3d15f4b4 -> :sswitch_1
        0x65a86df0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[LogSenderService] [onTaskRemoved]"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {v0}, Lcom/itsaky/androidide/logsender/LogSender;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {v0}, Lcom/itsaky/androidide/logsender/LogSender;->isBinding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Not bound to Code On The Go. Ignored."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->debug([Ljava/lang/Object;)V

    .line 107
    return-void

    .line 110
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Task removed. Destroying log sender..."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/itsaky/androidide/logsender/utils/Logger;->warn([Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/itsaky/androidide/logsender/LogSenderService;->logSender:Lcom/itsaky/androidide/logsender/LogSender;

    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsaky/androidide/logsender/LogSender;->destroy(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/LogSenderService;->stopSelf()V

    .line 113
    return-void
.end method
