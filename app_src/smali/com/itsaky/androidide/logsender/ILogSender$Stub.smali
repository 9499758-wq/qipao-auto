.class public abstract Lcom/itsaky/androidide/logsender/ILogSender$Stub;
.super Landroid/os/Binder;
.source "ILogSender.java"

# interfaces
.implements Lcom/itsaky/androidide/logsender/ILogSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsaky/androidide/logsender/ILogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsaky/androidide/logsender/ILogSender$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getId:I = 0x5

.field static final TRANSACTION_getPackageName:I = 0x4

.field static final TRANSACTION_getPid:I = 0x3

.field static final TRANSACTION_onDisconnect:I = 0x6

.field static final TRANSACTION_ping:I = 0x1

.field static final TRANSACTION_startReader:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "com.itsaky.androidide.logsender.ILogSender"

    invoke-virtual {p0, p0, v0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/itsaky/androidide/logsender/ILogSender;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "com.itsaky.androidide.logsender.ILogSender"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/itsaky/androidide/logsender/ILogSender;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Lcom/itsaky/androidide/logsender/ILogSender;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lcom/itsaky/androidide/logsender/ILogSender$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 70
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "com.itsaky.androidide.logsender.ILogSender"

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 82
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->onDisconnect()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->getId()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 107
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    goto :goto_0

    .line 100
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->getPid()I

    move-result v2

    .line 101
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    goto :goto_0

    .line 93
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->startReader(I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    goto :goto_0

    .line 86
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/itsaky/androidide/logsender/ILogSender$Stub;->ping()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    nop

    .line 130
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
