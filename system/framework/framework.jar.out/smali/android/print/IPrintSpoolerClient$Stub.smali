.class public abstract Landroid/print/IPrintSpoolerClient$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerClient.java"

# interfaces
.implements Landroid/print/IPrintSpoolerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerClient"

.field static final TRANSACTION_onAllPrintJobsForServiceHandled:I = 0x2

.field static final TRANSACTION_onAllPrintJobsHandled:I = 0x3

.field static final TRANSACTION_onPrintJobQueued:I = 0x1

.field static final TRANSACTION_onPrintJobStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.print.IPrintSpoolerClient"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.print.IPrintSpoolerClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintSpoolerClient;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/print/IPrintSpoolerClient;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/print/IPrintSpoolerClient$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/print/IPrintSpoolerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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

    .prologue
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v2, "android.print.IPrintSpoolerClient"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.print.IPrintSpoolerClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 60
    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_1

    .line 65
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_2
    const-string v2, "android.print.IPrintSpoolerClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 73
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 78
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v2, "android.print.IPrintSpoolerClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/print/IPrintSpoolerClient$Stub;->onAllPrintJobsHandled()V

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v2, "android.print.IPrintSpoolerClient"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 92
    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerClient$Stub;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_3

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
